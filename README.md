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

## Introduction

My dotfiles priorities simplicity of installation and ease of deployment on both Linux and MacOS. To achieve this they use [GNU stow](https://www.gnu.org/software/stow/) for manage configuration and [GNU make](https://www.gnu.org/software/make/) for setup.

##### Directories naming:
- lowercase directories contain dotfiles, these folders are being stowed
- leading `@` directories contains setup for specified environments, eg. `@macos`

## Preparations

My dotfiles require `git` and `make` libraries for installation. Make sure you have both on your machine before starting.

- Arch: `sudo pacman -S git make`
- OSX: `brew install git make`

## Installation

The installation process is organized around `Makefile` files.

- General `Makefile` file in the root of the repository. Installs common configurations for UNIX based OS.
- Environment `Makefile` files placed in `@` prefixed directories. Setups an OS-specific configuration.

Let's go through an example process of configuring a new MacOS computer.

1. First, clone this repository to your `$HOME` folder: 

```bash
git clone git@github.com:jedrzejchalubek/dotfiles.git ~/.dotfiles
```

2. Go to the previously cloned directory and run main `Makefile`:

```bash
# Move to the previously cloned repository ...
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

## Updating

As dotfiles are just a git repository we only have to push or pull latest changes and re-run makefiles to update symlinks and apply eventual changes. However, it's better to unlink current dotfiles before updating.

1. Unlink general and environment symlinks.

```bash
# Go to dotfiles directory ...
$ cd ~/.dotfiles

# ... and run `make unlink`
$ make unlink

# .. then move to environment directory ...
$ cd ~/.dotfiles/@macos

# ... and also run `make unlink`
$ make unlink
```

2. Fetch latest changes of dotfiles from the remote repository

```bash
# Go to dotfiles directory ...
$ cd ~/.dotfiles

# ... and update repository
$ git pull
```

3. Re-run [installation](#installation) steps.

## Credits

Many parts was inspired by dotfiles shared by other folks, but credits especially go to:
- [xero/dotfiles](https://github.com/xero/dotfiles)
- [mathiasbynens/dotfiles](https://github.com/mathiasbynens/dotfiles)
- [Kraymer/F-dotfiles](https://github.com/Kraymer/F-dotfiles)
