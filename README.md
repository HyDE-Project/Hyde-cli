> [!Note]
> for AUR
> hyprdots-ctl was renamed into hyprdots-ctl-git. Please install the "-git" package


```
  _   _                     _       _                  _   _ 
 | | | |_   _ _ __  _ __ __| | ___ | |_ ___        ___| |_| |
 | |_| | | | | '_ \| '__/ _` |/ _ \| __/ __|_____ / __| __| |
 |  _  | |_| | |_) | | | (_| | (_) | |_\__ \_____| (__| |_| |
 |_| |_|\__, | .__/|_|  \__,_|\___/ \__|___/      \___|\__|_|
        |___/|_|                                             
```
&ensp;[<kbd> <br> Read me <br> </kbd>](#read-me)&ensp;
&ensp;[<kbd> <br> Installation <br> </kbd>](#installation)&ensp;
&ensp;[<kbd> <br> Usage <br> </kbd>](#usage)&ensp;
&ensp;[<kbd> <br> Wiki <br> </kbd>](https://github.com/kRHYME7/Hyprdots-ctl/wiki)&ensp;
&ensp;[<kbd> <br> Discussions <br> </kbd>](https://github.com/kRHYME7/Hyprdots-ctl/discussions)&ensp;
<br><br>
# Read Me

Hyprdots-ctl is a command-line interface for [Hyprdots ricing](https://github.com/prasanthrangan/hyprdots). This repository contains scripts that are currently in the WIP phase, but could potentially be useful. This CLI aims to add patches for Hyprdots and update the script to address common configuration issues and requests. Please be aware that using these scripts may alter your configurations.

Hyprdots is stable, but this CLI is designed to be an active helper to some issues or some feature requests for Hyprdots. It is important to note that these scripts may alter or mess up your configurations. Please use them at your discretion.

### Warning

These scripts may alter or mess up your configurations. Please use them at your discretion.

# Installation

### Arch Linux

Recommended: Use your preferred AUR helper `paru` or `yay`.
```
paru -Sy hyprdots-ctl-git
yay -Sy hyprdots-ctl-git
```

Manual: Use makepkg
```
git clone https://aur.archlinux.org/hyprdots-ctl-git.git
cd hyprdots-ctl
makepkg -si
```

### Make

Install required dependencies: `git make fzf tree`.

Font dependencies: '[JetBrains Nerd font](https://github.com/ryanoasis/nerd-fonts)'

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

# Usage

Run: `Hyprdots man`

 See [USAGE](https://raw.githubusercontent.com/kRHYME7/Hyprdots-ctl/master/USAGE.md).


## Contributing

If you would like to contribute to the project, thanks.
I don't know what's the use of the STARS ⭐ but Please leave one when you visit this repo. 

## Support

If you encounter any issues, please submit them...

## Roadmap

+ This will just be an active helper to some issues or some feature requests for Hyprdots.
+ Add interactive installation using fzf



