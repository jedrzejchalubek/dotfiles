#!/bin/bash

# Show indicator lights for open applications in the Dock
defaults write com.apple.dock show-process-indicators -bool true

# Don’t animate opening applications from the Dock
defaults write com.apple.dock launchanim -bool false

# Automatically hide and show the Dock
defaults write com.apple.dock autohide -bool true

# Remove the auto-hiding Dock delay
defaults write com.apple.dock autohide-delay -float 0

# Faster animation of hiding/showing the Dock
defaults write com.apple.dock autohide-time-modifier -float 200

# Make Dock icons of hidden applications translucent
defaults write com.apple.dock showhidden -bool true

# No bouncing icons
defaults write com.apple.dock no-bouncing -bool true

# Organize applications in Dock
dockutil --no-restart --remove all
dockutil --no-restart --add "/Applications/Google Chrome.app"
dockutil --no-restart --add "/Applications/Utilities/Terminal.app"
dockutil --no-restart --add "/Applications/Sequel Pro.app"
dockutil --no-restart --add "/Applications/Spotify.app"

killall Dock
