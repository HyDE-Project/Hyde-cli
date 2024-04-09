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

You can install the package by running this command.

```
curl -sL https://raw.githubusercontent.com/kRHYME7/Hyde-cli/master/install.sh | bash
```
See below, other ways to install ``` Hyde-cli```

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
$git clone https://github.com/kRHYME7/Hyde-cli
$cd ./Hyde-cli
# make
```

To uninstall: 
```
# make uninstall
```

To update: 
```
# make update clean install
```

# Usage

Run: `Hyde man` for Usage.

---

**Installation Instructions for Hyde**

1. **Basic Installation**

> [!Note]
   > To achieve the best experience, I encourage you to perform a fresh install of Hyde.

   - To install Hyde with default settings, simply run the following command in your terminal:
     ```
     Hyde-install
     ```


2. **Advanced Usage and if you installed Hyde first** 
   - For more control over the installation process, you can use the following options:

     - **Custom Directory**
       - To clone Hyde into a custom directory and then run the installation, use the `-d` or `--dir` option followed by the path to your desired directory. The default path is `$HOME/.cache/hyde-cli/Hyde`.
         ```
         Hyde-install --dir /path/to/Clone/Hyde
         ```

     - **Specify Remote Repository**
       - If you wish to clone Hyde from a different remote repository, use the `-g` or `--git` option followed by the URL of the repository. The default repository is `https://github.com/prasanthrangan/hyde`.
         ```
         Hyde-install --git https://gitclone/repo/link/
         ```

     - **Transfer Link to Clone Directory**
       - To transfer the link to a clone directory, use the `-l` or `--link` option. By default, this option is set to `false`.
         ```
         Hyde-install --link
         ```
 > [!Important]
>   If you have previously installed Hyde without using the CLI, you can still use the CLI to manage your installation. To do this, you can combine the --dir and --link options. The --dir option specifies the directory where Hyde is installed, and the -l option allows Hyde-CLI to remember this directory for future commands. This is particularly useful if you want Hyde-CLI to recognize your existing Hyde installation and manage it accordingly.

``` Hyde-install --dir /path/to/existing/Hyde --link ```



## Contributing

If you would like to contribute to the project, thanks.
I don't know what's the use of the STARS ⭐ but Please leave one when you visit this repo. 

## Support

If you encounter any issues, please submit them...

## Roadmap

+ This will just be an active helper to some issues or some feature requests for Hyde.
+ Add interactive installation using fzf



