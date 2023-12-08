# Hyprdots-ctl

## Description

Hyprdots-ctl is a command-line interface for [Hyprdots ricing](https://github.com/prasanthrangan/hyprdots). This repository contains scripts that are currently in the unstable phase but could potentially be useful. This CLI aims to add patches for Hyprdots and update the script to address common configuration issues and requests. Please be aware that using these scripts may alter your configurations.

Hyprdots is stable, but this CLI is designed to be an active helper to some issues or some feature requests for Hyprdots. It is important to note that these scripts may alter or mess up your configurations. Please use them at your discretion.

## Warning

These scripts may alter or mess up your configurations. Please use them at your discretion.

## Installation

### ARCH
```
paru -Sy hyprdots-ctl
```
### MAKE
```
git clone https://github.com/kRHYME7/Hyprdots-ctl
cd  ./Hyprdots-ctl
sudo make
```

## Usage

run: 
``` Hyprdots man``` For the supported commands.

``` hyprdots-ctl man``` For Extra Commands.


## Man Pages 

```
Hyprdots man
Hyprdots: v0.5-180-g42164b4
CloneDirectory: /home/khing/Storage/My_Documents/GitHub/KhingDom
Usage: Hyprdots [Function] [Parameters]

  [man]                * Show Manual
  [update]             * Pull Updates From Hyprdots Repository
  [install]            * Installs Hyprdots
                          [fresh]          Fresh installation of Hyprdots
                          [custom]         Custom installation of Apps
  [restore]            * Restore Hyprdots Configurations
                          [defaults]       Restore to Default Configurations
  [theme]              * Theme Related Actions
                          [set]            Set Theme
                          [next]           Next Theme
                          [prev]           Previous Theme
                          [select]         Theme Selector
                          [patch]          Patch A Theme from different repository.
  [wallpaper]          * Wallpaper related Actions
                          [set]            Set /Path/to/Wallpaper as Wallpaper
                          [next]           Next Wallppaer
                          [prev]           Previous Wallpaper
                          [select]         Wallpaper Selector
  [sddm]               * Sddm Things
                          [set]            Set active Wallpaper to Sddm Lockscreen
  [wallbash]           * Wallbash
                          [toggle]         Toggle Wall bash On/Off
  [waybar]             * Waybar related Things
                          [control]        Edit waybar Control File.
  [code]               * Modify Vscode Extensions
                          [select]         Selector for default Theme presets
  [cache]              * Cache
                          [reload]         Reload Caches if you have new wallpapers.
                          [rebuild]        Force rebuild cache
                          [add]            Cache custom /path/to/wallpaper/*

```

```
hyprdots-ctl man
hyprdots-ctl: v0.1.0.17
CloneDirectory: /home/khing/Storage/My_Documents/GitHub/KhingDom
Usage: hyprdots-ctl [Function] [Arguments] [Parameters]

  [man]                * Show Manual
  [update]             * Pull Updates From Hyprdots Repository
  [install]            * Installs Hyprdots
                          [fresh]          Fresh installation of Hyprdots
                          [custom]         Custom installation of Apps
  [restore]            * Restore Hyprdots Configurations
                          [defaults]       Restore to Default Configurations of Hyprdots
  [backup]             * Handles backup functions.
                          [now]            Backups the current configuration.
                          [restore]        Restore to a Backup Configurations
  [theme]              * Theme Related Actions
                          [set]            Set Theme
                          [next]           Next Theme
                          [prev]           Previous Theme
                          [select]         Theme Selector
                          [patch]          Patch A Theme from different repository.
  [wallpaper]          * Wallpaper related Actions
                          [set]            Set /Path/to/Wallpaper as Wallpaper
                          [next]           Next Wallppaer
                          [prev]           Previous Wallpaper
                          [select]         Wallpaper Selector
  [sddm]               * Sddm Things
                          [set]            Set active Wallpaper to Sddm Lockscreen
  [wallbash]           * Wallbash
                          [toggle]         Toggle Wall bash On/Off
  [waybar]             * Waybar related Things
                          [control]        Edit waybar Control File.
  [code]               * Modify Vscode Extensions
                          [select]         Selector for default Theme presets
  [cache]              * Cache
                          [reload]         Reload Caches if you have new wallpapers.
                          [rebuild]        Force rebuild cache
                          [add]            Cache custom /path/to/wallpaper/*

```








## Contributing

If you would like to contribute to the project, Thanks.

## Support

If you encounter any issues, please submit them...

## Roadmap

This will just be an active helper to some issues or some feature requests for Hyprdots

