1. Install zsh and set as default shell `chsh -s /bin/zsh`

2. Install gnu stow
- Arch Linux: `sudo pacman -S stow`
- MacOS: `brew install stow`

3. Install git
- Arch Linux: `sudo pacman -S git`
- MacOS: `brew install git`

4. Clone this repository to your home directory `git clone git@github.com:jedrzejchalubek/dotfiles.git .dotfiles`

5. Link config files by executing `stow <folder>` command inside `.dotfiles` directory `stow git`. Previously installed configurations can be removed with `stow -D git` command.
