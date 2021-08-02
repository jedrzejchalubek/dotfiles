DIRECTORIES = xrdb git zsh zplug

default: link install

link:
	# First, we'll start with stow dotfiles itself.
	# They're responsible for filtering files
	# of directories stowed in next step.
	stow stow
	# After that, we can collectively
	# stow rest of the dotfiles.
	stow $(DIRECTORIES)

unlink:
	stow -D stow
	stow -D $(DIRECTORIES)

install:
	# Setup ZSH as the default shell.
	chsh -s `which zsh`
