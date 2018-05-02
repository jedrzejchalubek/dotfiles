default: \
	run_pacman \
	run_stow

run_pacman:
	sudo pacman -Sy yaourt --needed --noconfirm
	sudo pacman -S --needed --noconfirm `cat packages.txt`
	yaourt -S --needed --noconfirm `cat software.txt`
	yaourt -S --needed --noconfirm `cat fonts.txt`
	
run_stow:
	stow bspwm urxvt
