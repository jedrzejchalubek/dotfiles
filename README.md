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

##### Directories naming convention

- config files are grouped in domain named directories
- leading `@` directories contains config for specified environments, eg. `@macos`

## Preparations

My dotfiles requires only`git` and `make` libraries for installation. Make sure you have both on your machine before starting.

- `sudo pacman -S git make`
- `brew install git make`

## Installation

Installation process is organized around `Makefile` files.

- General `Makefile` file in the root of the repository. Installs common configurations for UNIX based OS.
- Environment `Makefile` files placed in `@` prefixed directores. Setups a OS specific configurations.

Let's go through an example process of configuring a new MacOS computer. First go to the root directory of previously cloned dotfiles repository:

1. Clone this repository to your `$HOME` folder: 

```bash
git clone git@github.com:jedrzejchalubek/dotfiles.git ~/.dotfiles
```

2. Go to cloned directory and run general `Makefile`:

```bash
# Change previously cloned dotfiles location
$ cd ~/.dotfiles

# Run `make` at ~/.dotfiles
$ make
```

3. Now, change to environment specific directory and run its `Makefile`:

```bash
# Change previously cloned dotfiles location
$ cd ~/.dotfiles/@macos

# Run `make` at ~/.dotfiles
$ make
```
