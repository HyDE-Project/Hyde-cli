#!/bin/env bash

hyde_usage_dir=$(dirname $0)
hyde_usage=$hyde_usage_dir/Hyde.usage

# echo $hyde_usage
[ ! -f ${hyde_usage} ] && echo "ERROR: ${hyde_usage} not found" && exit

Hyde --dev "gen_completion" > "${hyde_usage}"
complgen aot --bash-script ${hyde_usage_dir}/Hyde.bash --fish-script ${hyde_usage_dir}/Hyde.fish --zsh-script ${hyde_usage_dir}/Hyde.zsh  $hyde_usage