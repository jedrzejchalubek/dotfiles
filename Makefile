default: install

install:
	stow git zsh vim
	
uninstall:
	stow -D git zsh vim
