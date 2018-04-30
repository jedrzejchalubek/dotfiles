```
 _______               __       ______   __  __                     
/       \             /  |     /      \ /  |/  |                    
$$$$$$$  |  ______   _$$ |_   /$$$$$$  |$$/ $$ |  ______    _______ 
$$ |  $$ | /      \ / $$   |  $$ |_ $$/ /  |$$ | /      \  /       |
$$ |  $$ |/$$$$$$  |$$$$$$/   $$   |    $$ |$$ |/$$$$$$  |/$$$$$$$/ 
$$ |  $$ |$$ |  $$ |  $$ | __ $$$$/     $$ |$$ |$$    $$ |$$      \ 
$$ |__$$ |$$ \__$$ |  $$ |/  |$$ |      $$ |$$ |$$$$$$$$/  $$$$$$  |
$$    $$/ $$    $$/   $$  $$/ $$ |      $$ |$$ |$$       |/     $$/ 
$$$$$$$/   $$$$$$/     $$$$/  $$/       $$/ $$/  $$$$$$$/ $$$$$$$/  

```

My dotfiles priorities simplicity of installation and ease of deployment on both Linux and MacOS. To achieve this they use [GNU stow](https://www.gnu.org/software/stow/) for manage configuration and [GNU make](https://www.gnu.org/software/make/) for setup.

##### Directories naming convention

- config files are grouped in domain named directories
- leading `@` directories contains config for specified environments, eg. `@macos`

## Preparations

My dotfiles require only `git` and `make` libraries for installation. Make sure you have both on your machine before starting.

- `sudo pacman -S git make`
- `brew install git make`

## Installation

The installation process is organized around `Makefile` files.

- General `Makefile` file in the root of the repository. Installs common configurations for UNIX based OS.
- Environment `Makefile` files placed in `@` prefixed directories. Setups an OS-specific configuration.

Let's go through an example process of configuring a new MacOS computer.

1. First, clone this repository to your `$HOME` folder: 

```bash
git clone git@github.com:jedrzejchalubek/dotfiles.git ~/.dotfiles
```

2. Go to the previously cloned directory and run general `Makefile`:

```bash
# Change previously cloned dotfiles location ...
$ cd ~/.dotfiles

# ... and run `make` at ~/.dotfiles
$ make
```

3. Now, change to environment specific directory and run its `Makefile`:

```bash
# Go to environment specific directory ...
$ cd ~/.dotfiles/@macos

# ... and run `make` at ~/.dotfiles
$ make
```
