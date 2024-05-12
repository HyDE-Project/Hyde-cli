#!/bin/env bash

hyde_usage_dir=$(dirname $0)
hyde_cli_usage=$hyde_usage_dir/Hyde.usage
hyde_tool_usage=$hyde_usage_dir/Hyde-tool.usage


Hyde --dev "gen_completion" > "${hyde_cli_usage}"
Hyde-tool --dev gen_completion > "${hyde_tool_usage}"

[ ! -f ${hyde_cli_usage} ] && echo "ERROR: ${hyde_cli_usage} not found" && exit 0
[ ! -f ${hyde_tool_usage} ] && echo "ERROR: ${hyde_tool_usage} not found" && exit 0

complgen aot --bash-script ${hyde_usage_dir}/Hyde.bash --fish-script ${hyde_usage_dir}/Hyde.fish --zsh-script ${hyde_usage_dir}/Hyde.zsh  $hyde_cli_usage
complgen aot --bash-script ${hyde_usage_dir}/Hyde-tool.bash --fish-script ${hyde_usage_dir}/Hyde-tool.fish --zsh-script ${hyde_usage_dir}/Hyde-tool.zsh  $hyde_tool_usage
