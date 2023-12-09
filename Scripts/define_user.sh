#!/bin/bash

# Source the user's settings, overwriting any defaults
ctlFile="./hyprdots.conf"

evaluate() {
   section=$1
   while read -r line; do 
    #  echo $line
    eval "$line"
   done < <(grep -Pzo "(?s)\[$section\][^\[]*" $ctlFile | grep -Eva '^\['"$section"'\]|^$')
}

fn_Code() {  
evaluate "Code"
  file="$HOME/.config/Code/User/settings.json"
  declare -A vars=(
    ["workbench.colorTheme"]=${workbench_colorTheme:-"Catppuccin Mocha"}
    ["window.menuBarVisibility"]=${window_menuBarVisibility:-"toggle"}
    ["editor.fontSize"]=${editor_fontSize:-12}
    ["editor.scrollbar.vertical"]=${editor_scrollbar_vertical:-"hidden"}
    ["editor.scrollbar.verticalScrollbarSize"]=${editor_scrollbar_verticalScrollbarSize:-0}
    ["security.workspace.trust.untrustedFiles"]=${security_workspace_trust_untrustedFiles:-"newWindow"}
    ["security.workspace.trust.startupPrompt"]=${security_workspace_trust_startupPrompt:-"never"}
    ["security.workspace.trust.enabled"]=${security_workspace_trust_enabled:-false}
    ["editor.minimap.side"]=${editor_minimap_side:-"left"}
    ["editor.fontFamily"]=${editor_fontFamily:-"'Maple Mono', 'monospace', monospace"}
    ["extensions.autoUpdate"]=${extensions_autoUpdate:-false}
    ["workbench.statusBar.visible"]=${workbench_statusBar_visible:-false}
    ["terminal.external.linuxExec"]=${terminal_external_linuxExec:-"kitty"}
    ["terminal.explorerKind"]=${terminal_explorerKind:-"both"}
    ["terminal.sourceControlRepositoriesKind"]=${terminal_sourceControlRepositoriesKind:-"both"}
    ["telemetry.telemetryLevel"]=${telemetry_telemetryLevel:-"off"}
  )

  for var in "${!vars[@]}"; do
    # Use jq to update the settings file
    jq --arg key "$var" --arg value "${vars[$var]}" '
      if .[$key] | type == "string" then
        .[$key] = $value
      elif .[$key] | type == "number" then
        .[$key] = ($value | tonumber)
      elif .[$key] | type == "boolean" then
        .[$key] = ($value | test("true"))
      else
        .
      end' "$file" > temp.json && mv temp.json "$file"
  done
}

fn_kdeglobals() { evaluate "kdeglobals"
file="$HOME/.config/kdeglobals"
declare -A vars=(
    ["TerminalApplication"]=${TerminalApplication:-"kitty"}
)
  for var in "${!vars[@]}"; do
    sed -i "s|^$var=.*|$var=${vars[$var]}|" "$file"
  done
}

fn_kitty() { evaluate "kitty" 
 file=~/.config/kitty/kitty.conf
  declare -A vars=(
    ["font_family"]="${font_family:-CaskaydiaCove Nerd Font Mono}"
    ["bold_font"]="${bold_font:-auto}"
    ["italic_font"]="${italic_font:-auto}"
    ["bold_italic_font"]="${bold_italic_font:-auto}"
    ["font_size"]="${font_size:-12}"
    ["window_padding_width"]="${window_padding_width:-25}"
    ["include"]="${include:-themes/theme.conf}"
    ["confirm_os_window_close"]="${confirm_os_window_close:-0}"
  )
  for var in "${!vars[@]}"; do
    sed -i "s|^$var .*|$var ${vars[$var]}|" "$file"
  done
}


fn_Code
fn_kdeglobals
fn_kitty
