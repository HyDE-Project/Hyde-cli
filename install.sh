#! /bin/env bash

distro_ID=$(cat /etc/*release | grep -oP '^ID=\K[^"]+' | tr -d ' ' | tr '[:upper:]' '[:lower:]')
clone_hyde_cli=${HOME}/.cache/hyde-cli/Hyde-cli
mkdir -p "${clone_hyde_cli}"
case "${distro_ID}" in
    "fedora")
        :
        #Yes posible! But I'm Lazy
    ;;
    "arch")
        pkgname=hyde-cli-git
        if pacman -Q yay &> /dev/null ; then aurhlpr="yay"
            elif pacman -Q paru &> /dev/null ; then aurhlpr="paru"
        else
            select opt in "yay" "paru"; do if [[ -n $opt ]]; then aurhlpr=$opt ; break ; fi ;done
            sudo pacman -S --needed git base-devel
            rm -fr ${clone_hyde_cli}/${aurhlpr}
            git clone https://aur.archlinux.org/${aurhlpr}.git ${clone_hyde_cli}/${aurhlpr}
            cd ${clone_hyde_cli}/${aurhlpr}
            makepkg -si --noconfirm
        fi
        
        if ! pacman -Q "${aurhlpr}" &> /dev/null; then echo "Please try to rerun script!" && exit 0 ;fi
        
        if pacman -Q "${pkgname}" 2> /dev/null; then
            if ${aurhlpr} -Qu --devel "${pkgname}" | grep -q "${pkgname}"; then
                ${aurhlpr} -Sy "${pkgname}" --noconfirm
            else echo "Already up to date"
            fi
            exit 0
        else "${aurhlpr}" -Sy "${pkgname}" --noconfirm
            if pacman -Q "${pkgname}" 2> /dev/null ; then exit 0 ; fi
        fi
    ;;
esac

mkdir -p "${clone_hyde_cli}"
rm -fr "${clone_hyde_cli}"
git clone https://github.com/kRHYME7/Hyde-cli "${clone_hyde_cli}"
cd "${clone_hyde_cli}" || exit

if ! git config --get-regexp 'remote.origin.fetch' | grep -q 'refs/heads/\*:refs/remotes/origin/\*'; then
    git remote set-branches origin '*'
fi
git fetch --all
Git_Repo="$(git remote get-url origin)"

branches=$(curl -s "https://api.github.com/repos/${Git_Repo#*://*/}/branches" | jq -r '.[].name') ; branches=($branches)
if [[ ${#branches[@]} -le 1 ]]; then
    branch=${branches[0]}
else echo "Select a Branch"
    if command -v fzf ; then
        git_branch=$(git branch -a | fzf --prompt='Choose a branch')
    else
        select git_branch in "${branches[@]}"; do [[ -n $git_branch ]] && break || echo "Invalid selection. Please try again." ; done
    fi
fi

[[ -z ${git_branch} ]] && echo "Operation Cancelled" && exit 0
if [[ $git_branch == *"*"* ]]; then
    echo "Already in branch: ${git_branch}"
    return 1
else
    # Extract the branch name without the remote prefix and trim leading whitespace
    branch_name=$(echo "${git_branch}" | sed 's/.*\///' | sed 's/^[[:space:]]*//')
    # Switch to the selected branch
    git switch "${branch_name}"
fi

echo "Continue to install ${pkgname} locally"
sudo make clean install
