#! /bin/env bash

SUPER() {
    local command="$*"
    echo -ne "\e[33m[ROOT]\e[0m ${command}"
    if command -v doas >/dev/null 2>&1 && [ -f /etc/doas.conf ]; then
        doas sh -c "$command"
    else
        sudo sh -c "$command"
    fi
}
export -f SUPER

check_deps() {
    for cmd in "${@}"; do
        echo $cmd
        if ! command -v "$cmd" >/dev/null 2>&1; then
            echo "'$cmd' not found."
            export requirements+="${cmd} "
        fi
    done

    [ -n "${requirements}" ] && echo -e "Depedencies: ${requirements}\nInstall them using your package manager"
}

export -f check_deps

if [[ 1 -ne ${HYDE_LOCAL} ]]; then
    PACKAGE_MANAGER=$(which pacman >/dev/null 2>&1 && echo "pacman" || true)
    # PACKAGE_MANAGER=${PACKAGE_MANAGER:-$(which apt >/dev/null 2>&1 && echo "apt" || true)}
    # PACKAGE_MANAGER=${PACKAGE_MANAGER:-$(which zypper >/dev/null 2>&1 && echo "zypper" || true)}
    # PACKAGE_MANAGER=${PACKAGE_MANAGER:-$(which yum >/dev/null 2>&1 && echo "yum" || true)}
    echo "Package manager: $PACKAGE_MANAGER"

    case "${PACKAGE_MANAGER}" in
    dnf)
        :
        #Yes posible! But I'm Lazy
        ;;
    pacman)
        pkgname=hyde-cli-git
        if pacman -Q yay &>/dev/null; then
            aurhlpr="yay"
        elif pacman -Q paru &>/dev/null; then
            aurhlpr="paru"
        else
            select opt in "yay" "paru"; do if [[ -n $opt ]]; then
                aurhlpr=$opt
                break
            fi; done
            SUPER pacman -S --needed git base-devel
            rm -fr ${clone_hyde_cli}/${aurhlpr}
            git clone https://aur.archlinux.org/${aurhlpr}.git ${clone_hyde_cli}/${aurhlpr}
            cd ${clone_hyde_cli}/${aurhlpr}
            makepkg -si --noconfirm
        fi

        if ! pacman -Q "${aurhlpr}" &>/dev/null; then echo "Please try to rerun script!" && exit 0; fi

        if pacman -Q "${pkgname}" 2>/dev/null; then
            if ${aurhlpr} -Qu --devel "${pkgname}" | grep -q "${pkgname}"; then
                ${aurhlpr} -Sy "${pkgname}" --noconfirm
            else
                echo "Already up to date"
            fi
            exit 0
        else
            "${aurhlpr}" -Sy "${pkgname}" --noconfirm
            if pacman -Q "${pkgname}" 2>/dev/null; then exit 0; fi
        fi
        ;;
    esac

fi

check_deps jq git kitty

clone_hyde_cli=${HOME}/.cache/hyde/Hyde-cli
# mkdir -p "${clone_hyde_cli}"

rm -fr "${clone_hyde_cli}"
git clone https://github.com/kRHYME7/Hyde-cli "${clone_hyde_cli}"
cd "${clone_hyde_cli}" || exit

if [[ true == "HYDE_BRANCH" ]]; then
    if ! git config --get-regexp 'remote.origin.fetch' | grep -q 'refs/heads/\*:refs/remotes/origin/\*'; then
        git remote set-branches origin '*'
    fi
    git fetch --all
    Git_Repo="$(git remote get-url origin)"

    branches=$(curl -s "https://api.github.com/repos/${Git_Repo#*://*/}/branches" | jq -r '.[].name')
    branches=($branches)
    if [[ ${#branches[@]} -le 1 ]]; then
        branch=${branches[0]}
    else
        echo "Select a Branch (default Master):  "
        if command -v flzf; then
            git_branch=$(git branch -a | fzf --prompt='Choose a branch')
            { [[ -z ${git_branch} ]] && git_branch=master && echo "Default master branch"; }
        else
            select git_branch in "${branches[@]}"; do [[ -n $git_branch ]] && break || echo "Invalid Selection"; done
        fi
    fi

    [[ -z ${git_branch} ]] && echo "Operation cancelled" && exit 0
    if [[ $git_branch == *"*"* ]]; then
        echo "Already in branch: ${git_branch}"
        return 1
    else
        # Extract the branch name without the remote prefix and trim leading whitespace
        branch_name=$(echo "${git_branch}" | sed 's/.*\///' | sed 's/^[[:space:]]*//')
        # Switch to the selected branch
        git switch "${branch_name}"
    fi
fi

echo "Installing ${pkgname} locally"
make LOCAL=1 clean all
