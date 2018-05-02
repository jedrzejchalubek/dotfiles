default: install setup

install:
	stow xrdb git zsh vim
	
uninstall:
	stow -D xrdb git zsh vim
	
setup:
	chsh -s `which zsh`
