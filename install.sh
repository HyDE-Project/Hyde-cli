#! /bin/env bash

clone_hyde_cli=${HOME}/.cache/hyde-cl/Hyde-cli
mkdir -p "${clone_hyde_cli}"

git clone https://github.com/kRHYME7/Hyprdots-ctl "${clone_hyde_cli}" || true
cd "${clone_hyde_cli}" || exit 
if ! git config --get-regexp 'remote.origin.fetch' | grep -q 'refs/heads/\*:refs/remotes/origin/\*'; then
    git remote set-branches origin '*'
fi
git fetch --all 
  git_branch=$(git branch -a | fzf --prompt='Choose a branch')
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
( git reset --hard HEAD  && git clean -fd  && git pull )  || true
sudo make 