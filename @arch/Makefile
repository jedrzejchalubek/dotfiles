default: packages software setup

packages:
	sudo pacman -S --needed --noconfirm `cat packages.txt`

software:
	sudo pacman -S yaourt --needed --noconfirm
	yaourt -S --needed --noconfirm `cat software.txt`

setup:
	chsh -s `which zsh`
