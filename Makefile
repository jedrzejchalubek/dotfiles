default: install configure

install:
	# First, we'll start with stow dotfiles itself.
	# They're responsible for filtering when 
	# stowing packages in the next step.
	stow stow
	# After that, we can collectively 
	# stow rest of the dotfiles.
	stow xrdb git zsh vim
	
uninstall:
	stow -D stow xrdb git zsh vim
	
configure:
	# Setup ZSH as the default shell.
	chsh -s `which zsh`
