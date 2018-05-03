DIRECTORIES = bspwm urxvt

default: link install

link:
	stow $(DIRECTORIES)

unlink:
	stow -D $(DIRECTORIES)

install:
	sudo pacman -Sy yaourt --needed --noconfirm
	sudo pacman -S --needed --noconfirm `cat packages.txt`
	yaourt -S --needed --noconfirm `cat software.txt`
	yaourt -S --needed --noconfirm `cat fonts.txt`
