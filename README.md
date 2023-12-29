## Description

Hyprdots-ctl is a command-line interface for [Hyprdots ricing](https://github.com/prasanthrangan/hyprdots). This repository contains scripts that are currently in the WIP phase, but could potentially be useful. This CLI aims to add patches for Hyprdots and update the script to address common configuration issues and requests. Please be aware that using these scripts may alter your configurations.

Hyprdots is stable, but this CLI is designed to be an active helper to some issues or some feature requests for Hyprdots. It is important to note that these scripts may alter or mess up your configurations. Please use them at your discretion.

## Warning

These scripts may alter or mess up your configurations. Please use them at your discretion.

## Installation

### Arch Linux

Recommended: Use your preferred AUR helper `paru` or `yay`.
```
paru -Sy hyprdots-ctl
yay -Sy hyprdots-ctl
```

Manual: Use makepkg
```
git clone https://aur.archlinux.org/hyprdots-ctl
cd hyprdots-ctl
makepkg -si
```

### Make

Install required dependencies: `git make fzf tree`.

To install: 
```
git clone https://github.com/kRHYME7/Hyprdots-ctl
cd ./Hyprdots-ctl
sudo make
```

To uninstall: 
```
sudo make uninstall
```

To update: 
```
sudo make update clean install
```

## Usage

Run: `Hyprdots man`

### Manual

```
Usage: Hyprdots [Function] [Arguments]/[Parameters]

  [man]                * Show Manual
  [version]            * Hyprdots Version
  [update]             * Pull Updates From Hyprdots Repository
  [install]            * Installs Hyprdots
                          [fresh]          Fresh installation of Hyprdots
                          [custom]         Custom installation of Apps
  [restore]            * Restore Hyprdots
                          [defaults]       Restore to Default Dots of Hyprdots
                          [Clone]          Restores Dots from a Clone Repository
                          [BackUp]         Restores Dots to a previous state.
  [backup]             * Handles Your Back ups.
                          [all]            Backs up the current configuration.
                          [revert]         Revert to a Previous Backup run by 'Hyprdots backup all'.
                          [list]           List the backup
                          [clean]          Clear some Storage by Deleting old backups. 
  [theme]              * Theme Related Actions
                          [set]            Set Theme
                          [next]           Next Theme
                          [prev]           Previous Theme
                          [select]         Theme Selector
                          [patch]          Patch A Theme from different repository.
  [wallpaper]          * Wallpaper related Actions
                          [set]            Set /Path/to/Wallpapers as new Wallpaper Directory
                          [next]           Next Wallppaer
                          [prev]           Previous Wallpaper
                          [select]         Wallpaper Selector
  [sddm]               * Sddm Things
                          [set]            Set active Wallpaper to Sddm Lockscreen
  [wallbash]           * Toggle to use wallpaper color as theme color.
                          [toggle]         Toggle Wall bash On/Off
  [waybar]             * Waybar related Things
                          [control]        Edit waybar Control File.
  [code]               * Modify Vscode Extensions
                          [select]         Selector for default Theme presets
  [cache]              * Cache
                          [reload]         Reload Caches if you have new wallpapers.
                          [rebuild]        Force rebuild cache
                          [add]            Cache custom /path/to/wallpaper/* 
  [power]              * Power Options
                          [reset]          Reset Changes.
                          [save]           Save Power by disabling features
                          [game]           Toggle Game mode
  [show]               * Some Awsome GUI you might want to use.
                          [binds]          Show Keybindings Hints
                          [emoji]          Show Emojis

```

## Contributing

If you would like to contribute to the project, thanks.
ALSO! I don't know what is the use of the STARS ⭐ but Please leave one when you visit this repo. 

## Support

If you encounter any issues, please submit them...

## Roadmap

This will just be an active helper to some issues or some feature requests for Hyprdots.
