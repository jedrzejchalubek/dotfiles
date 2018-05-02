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

## Introduction

I wanted to keep my dotfiles stupid simple, no fancy installation or bootstrapping shell scripts. All is tied-up with easy to follow symlinks and makefiles.

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
