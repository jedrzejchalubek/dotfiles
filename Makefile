default: install

install:
	stow xrdb git zsh vim
	
uninstall:
	stow -D xrdb git zsh vim
