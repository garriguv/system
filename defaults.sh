#!/usr/bin/env bash

# Default screenshots directory
defaults write com.apple.screencapture location ~/Downloads

# Enable repeat keypresses in VS Code
defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false
