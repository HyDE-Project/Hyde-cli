> [!Important]
> * Users getting this error ``` You are using an older version of Hyde! Please see upstream to adjust your configuration. ```
>  Please follow instructions here https://github.com/prasanthrangan/hyprdots/issues/1053 \
>
> * The ```Hyprdots``` cmd will be changed to ``` Hyde ``` command. But Hyprdots would still work for the meantime with Warning messages.


> [!Note]
> for AUR
> hyprdote-ctl was renamed into hyde-cli-git. Please install the "-git" package
> ``` yay -Sy hyde-cli-git ``` 


# HyDE-CLI

&ensp;[<kbd> <br> Read me <br> </kbd>](#read-me)&ensp;
&ensp;[<kbd> <br> Installation <br> </kbd>](#installation)&ensp;
&ensp;[<kbd> <br> Usage <br> </kbd>](#usage)&ensp;
&ensp;[<kbd> <br> Wiki <br> </kbd>](https://github.com/kRHYME7/Hyde-cli/wiki)&ensp;
&ensp;[<kbd> <br> Discussions <br> </kbd>](https://github.com/kRHYME7/Hyde-cli/discussions)&ensp;
<br><br>
# Read Me

Hyde-cli is a command-line interface for [Hyde ricing](https://github.com/prasanthrangan/hyprdots). This repository contains scripts that are currently in the WIP phase, but could potentially be useful. This CLI aims to add patches for Hyde and update the script to address common configuration issues and requests. Please be aware that using these scripts may alter your configurations.

Hyde is stable, but this CLI is designed to be an active helper to some issues or some feature requests for Hyde. It is important to note that these scripts may alter or mess up your configurations. Please use them at your discretion.

### Warning

These scripts may alter or mess up your configurations. Please use them at your discretion.

# Installation

### Arch Linux

Recommended: Use your preferred AUR helper `paru` or `yay`.
```
paru -Sy hyde-cli-git
yay -Sy hyde-cli-git
```
> [!Important]
> Incase you did not recieve updates for a long time.

![image](https://github.com/kRHYME7/Hyde-cli/assets/53417443/60dd1d75-e38b-4a15-a5f6-2f002fbb4d2a)


Manual: Use makepkg
```
git clone https://aur.archlinux.org/hyde-cli-git.git
cd hyde-cli
makepkg -si
```

### Make

Install required dependencies: `git make fzf tree`.

Font dependencies: '[JetBrains Nerd font](https://github.com/ryanoasis/nerd-fonts)'

To install: 
```
git clone https://github.com/kRHYME7/Hyde-cli
cd ./Hyde-cli
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

Run: `Hyde man`

 See [USAGE](https://raw.githubusercontent.com/kRHYME7/Hyde-cli/master/USAGE.md).


## Contributing

If you would like to contribute to the project, thanks.
I don't know what's the use of the STARS ⭐ but Please leave one when you visit this repo. 

## Support

If you encounter any issues, please submit them...

## Roadmap

+ This will just be an active helper to some issues or some feature requests for Hyde.
+ Add interactive installation using fzf



