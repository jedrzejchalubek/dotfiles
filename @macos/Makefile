default: \
	install_homebrew \
	run_stow \
	run_homebrew \
	run_defaults

install_homebrew:
	# Install Homebrew, if it's not already installed
	if test ! $(which brew); then
	  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
	fi
	
run_stow:
	stow defaults

run_homebrew:
	# Tap additional repositories
	brew tap 'homebrew/php'
	brew tap 'caskroom/cask'
	brew tap 'caskroom/fonts'
	# Install packages and libraries
	brew install `cat packages.txt`
	# Install programs
	brew cask install `cat software.txt`
	# Install non-standard fonts
	brew cask install `cat fonts.txt`
	
run_defaults:
	# Close "System Preferences" before starting
	osascript -e 'tell application "System Preferences" to quit'
	# Ask for the administrator password upfront
	sudo -v
	# Keep-alive: update existing `sudo` time stamp until `.macos` has finished
	while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &
	# Loop through defaults and source its files
	defaults_files=(~/.macos/**/*.sh(N))
	for file in ${defaults_files}
	do
	  source $file
	done
	
