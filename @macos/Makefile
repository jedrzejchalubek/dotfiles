DIRECTORIES = defaults karabiner

default: \
	link \
	configure-homebrew run-homebrew

link:
	stow $(DIRECTORIES)

unlink:
	stow -D $(DIRECTORIES)

configure-homebrew:
	# Tap additional repositories
	brew tap 'homebrew/cask'
	brew tap 'homebrew/cask-fonts'

run-homebrew:
	# Install packages, software and fonts
	brew install `cat packages.txt`
	brew install --cask `cat software.txt`
	brew install --cask `cat fonts.txt`
