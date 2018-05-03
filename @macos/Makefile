DIRECTORIES = defaults

default: \
	link \
	install-defaults \
	install-homebrew configure-homebrew run-homebrew

link:
	stow $(DIRECTORIES)

unlink:
	stow -D $(DIRECTORIES)

install-defaults:
	# Loop through defaults and source its files
	for file in (~/.macos/**/*.sh(N))
	do
	  source $file
	done

install-homebrew:
	# Install Homebrew, if it's not already installed
	if test ! $(which brew); then
		/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
	fi

configure-homebrew:
	# Tap additional repositories
	brew tap 'homebrew/php'
	brew tap 'caskroom/cask'
	brew tap 'caskroom/fonts'

run-homebrew:
	# Install packages, software and fonts
	brew install `cat packages.txt`
	brew cask install `cat software.txt`
	brew cask install `cat fonts.txt`
