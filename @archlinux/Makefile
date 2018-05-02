default: 
	run_pacman

bundle_pacman:
	sudo pacman -S yaourt --needed --noconfirm
	sudo pacman --needed --noconfirm $(cat packages.txt)
	yaourt -S --needed --noconfirm $(cat software.txt)
	yaourt -S --needed --noconfirm $(cat fonts.txt)
