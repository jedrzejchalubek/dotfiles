#!/bin/bash

# Group windows by application in Mission Control
defaults write com.apple.dock expose-group-by-app -bool true

# Speed up Mission Control animations
defaults write com.apple.dock expose-animation-duration -float 0.1
