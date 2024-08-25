<div align="center">
  <br>

![hyde_cli_banner](https://raw.githubusercontent.com/krhyme7/hyde-cli/master/Assets/hyde_cli_banner.png)

  <br>
  <a href="#installation"><kbd> <br> Installation <br> </kbd></a>&ensp;&ensp;
  <a href="https://raw.githubusercontent.com/kRHYME7/Hyde-cli/master/USAGE"><kbd> <br> Usage <br> </kbd></a>&ensp;&ensp;
  <a href="#faq"><kbd> <br> FAQ <br> </kbd></a>&ensp;&ensp;
  <a href="#support"><kbd> <br> Support <br> </kbd></a>&ensp;&ensp;
  <a href="#roadmap"><kbd> <br> Roadmap <br> </kbd></a>&ensp;&ensp;
  <a href="https://github.com/kRHYME7/Hyde-cli/wiki"><kbd> <br> Wiki <br> </kbd></a>&ensp;&ensp;
  <a href="https://discord.gg/qWehcFJxPa"><kbd> <br> HyDE Discord <br> </kbd></a>
  <br><br><br>

Hyde-cli is a CLI tool for [HyDE](https://github.com/prasanthrangan/hyprdots).
This repository contains scripts that, while may not be perfect, could provide a better way to manage your HyDE installation.
For example, we have a functional TUI restore tool that follows `restore_cfg.lst`, power-saving options that could be useful for laptops, and much more!

</div>

> [!CAUTION]
> While Hyde-cli is stable, it is important to note that these scripts do alter and *could* potentially mess up your system configuration.
> We ask that you use this tool carefully and report any bugs you find.

## Installation

To install, execute the following command:

```
curl -sL https://raw.githubusercontent.com/kRHYME7/Hyde-cli/master/install.sh | bash
```

> [!Note]
> For User who do not have root access:
> ` export HYDE_LOCAL=1 ` to install this package locally

For other working install solutions, see the following below.

### Arch Linux

Use your preferred AUR helper `paru` or `yay`:

```
paru -Sy hyde-cli-git
```

```
yay -Sy hyde-cli-git
```

Use makepkg:

```
git clone https://aur.archlinux.org/hyde-cli-git.git
cd ./hyde-cli
makepkg -si
```

### Make

Install required dependencies: `git make fzf tree ttf-jetbrains-mono-nerd`.

Clone:

```
git clone https://github.com/kRHYME7/Hyde-cli
cd ./Hyde-cli
```

To install:

```
make
```

To uninstall:

```
make uninstall
```

To update:

```
make update clean install
```

> [!Note]
> User who do not have root access should provide this flag for ` make `; ` make LOCAL=1 `

## Usage

Run: `Hyde man` if Hyde-cli is installed.
<br>
View [USAGE](https://raw.githubusercontent.com/kRHYME7/Hyde-cli/master/USAGE)

---

#### Installation Instructions for HyDE with Hyde-install

> [!Note]
> To achieve the best experience, it is encouraged you perform a fresh install of HyDE.

1) **Basic Installation**

- To install HyDE with the defaults, simply run the following command:

    ```
    Hyde-install
    ```

> [!Important]
> *Already  have HyDE before you discover this CLI?*
> Simply run this command
> ` Hyde-install --link --dir ~/HyDE `
> Note that the ` ~/HydE ` is the path to the clone directory.
> See **Advanced Installation** below for more info.

2) **Advanced Installation**

- For more control over the installation process, you can use the following options:

  - **Specify Local Directory**: To clone HyDE into a specific local directory and run the installation, use the `-d` or `--dir` flag followed by the path of the directory.

      ```
      Hyde-install --dir /path/to/directory
      ```

  - **Specify Remote Git Repository**: To clone HyDE from a specific remote git repository, use the `-g` or `--git` flag followed by the URL of the repository.

      ```
      Hyde-install --git https://host/owner/repository
      ```

  - **Link Local Git Repository**: To link a local git repository, use the `-l` or `--link` flag.

      ```
      Hyde-install --link
      ```

> [!Important]
> If you have previously installed HyDE without using the CLI, you can still use the CLI to manage your installation.
> To do this, combine the --dir and --link flags where the local cloned repository is located.
>
> For example:
>
> ```
> Hyde-install --dir /path/to/cloned/hyde --link
> ```

## FAQ

#### Activate Shell-completions

If shell completions are not working, you can manually source them from the terminal. You can also persist the changes by adding the snippet at the end of your `.zshrc`, `.bashrc`.

<details>
<summary>Zsh</summary>

```sh
source Hyde.zsh
```

</details>

<details>
<summary>Bash</summary>

```sh
source Hyde.bash
```
</details>

#### Images are not being shown in the terminal
  Make sure your terminal supports images. If you are using a terminal emulator that does not support images, you can use a terminal emulator that does, such as `kitty`.
  
</details>

## Support

If you would like to support this project, but don't know how, here are some ways:

- Submit PRs. Even if it's formatting improvements or fixing spelling mistakes, they are all appreciated!
- Report issues. Major or minor, doesn't matter, please report any you find.
- I don't really know what the use of the stars is, but feel free to leave one!
- Would greatfully help me a lot. [![ko-fi](https://ko-fi.com/img/githubbutton_sm.svg)](https://ko-fi.com/A0A3TECUZ) 
## Roadmap

This is the current unfinished and completed plans of the project:

- [ ] Add interactive installation using fzf
- [x] Interactive restore config following `restore_cfg.lst`
- [x] Interactive package installation following `custom_apps.lst`
- [x] Interactive theme selection
- [x] Shell swap selection
- [ ] Separate TUI from CLI
- [ ] More to come...
