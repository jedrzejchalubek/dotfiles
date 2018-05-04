DIRECTORIES = bspwm urxvt

default: \
	link \
	install-yaourt run-yaourt

link:
	stow $(DIRECTORIES)

unlink:
	stow -D $(DIRECTORIES)

install-yaourt:
	sudo pacman -Sy yaourt --needed --noconfirm
	
run-yaourt:
	sudo yaourt -S --needed --noconfirm `cat packages.txt`
	yaourt -S --needed --noconfirm `cat software.txt`
	yaourt -S --needed --noconfirm `cat fonts.txt`
