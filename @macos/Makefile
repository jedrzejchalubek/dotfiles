default: \
	install_defaults \
	install_homebrew \
	run_homebrew

install_homebrew:
	# Install Homebrew, if it's not already installed
	if test ! $(which brew); then
	  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
	fi

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
	
install_defaults:	
	# Set standby delay to 24 hours (default is 1 hour)
	sudo pmset -a standbydelay 86400
	# Disable the sound effects on boot
	sudo nvram SystemAudioVolume=" "
	# Show the ~/Library folder
	chflags nohidden $HOME/Library
	# Disable press-and-hold for keys in favor of key repeat.
	defaults write -g ApplePressAndHoldEnabled -bool false
	# Set a really fast key repeat.
	defaults write NSGlobalDomain KeyRepeat -int 1
	# Automatically quit printer app once the print jobs complete
	defaults write com.apple.print.PrintingPrefs "Quit When Finished" -bool true
	# Disable the “Are you sure you want to open this application?” dialog
	defaults write com.apple.LaunchServices LSQuarantine -bool false
	# Disable smart quotes as they’re annoying when typing code
	defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false
	# Disable smart dashes as they’re annoying when typing code
	defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false
	# Increase sound quality for Bluetooth headphones/headsets
	defaults write com.apple.BluetoothAudioAgent "Apple Bitpool Min (editable)" -int 40
	# Disable auto-correct
	defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false
	# Require password immediately after sleep or screen saver begins
	defaults write com.apple.screensaver askForPassword -int 1
	defaults write com.apple.screensaver askForPasswordDelay -int 0
	# Finder: disable window animations and Get Info animations
	defaults write com.apple.finder DisableAllAnimations -bool true
	# Finder: show path bar
	defaults write com.apple.finder ShowPathbar -bool true
	# When performing a search, search the current folder by default
	defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"
	# Disable the warning when changing a file extension
	defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false
	# Use list view in all Finder windows by default
	# Four-letter codes for the other view modes: `icnv`, `clmv`, `Flwv`
	defaults write com.apple.finder FXPreferredViewStyle -string "Nlsv"
	# Auto hide menu bar
	defaults write NSGlobalDomain _HIHideMenuBar -bool true
	# Enable highlight hover effect for the grid view of a stack (Dock)
	defaults write com.apple.dock mouse-over-hilite-stack -bool true
	# Change minimize/maximize window effect
	defaults write com.apple.dock mineffect -string "scale"
	# Minimize windows into their application’s icon
	defaults write com.apple.dock minimize-to-application -bool true
	# Group windows by application in Mission Control
	defaults write com.apple.dock expose-group-by-app -bool true
	# Disable Dashboard
	defaults write com.apple.dashboard mcx-disabled -bool true
	# Don’t show Dashboard as a Space
	defaults write com.apple.dock dashboard-in-overlay -bool true
	# Remove the auto-hiding Dock delay
	defaults write com.apple.dock autohide-delay -float 0
	# Faster animation of hiding/showing the Dock
	defaults write com.apple.dock autohide-time-modifier -float 200
	# Automatically hide and show the Dock
	defaults write com.apple.dock autohide -bool true
	# Privacy: don’t send search queries to Apple
	defaults write com.apple.Safari UniversalSearchEnabled -bool false
	defaults write com.apple.Safari SuppressSearchSuggestions -bool true
	# Only use UTF-8 in Terminal.app
	defaults write com.apple.terminal StringEncodings -array 4
	# Don’t display the annoying prompt when quitting iTerm
	defaults write com.googlecode.iterm2 PromptOnQuit -bool false
	# Prevent Time Machine from prompting to use new hard drives as backup volume
	defaults write com.apple.TimeMachine DoNotOfferNewDisksForBackup -bool true
	# Prevent Photos from opening automatically when devices are plugged in
	defaults -currentHost write com.apple.ImageCapture disableHotPlug -bool true
