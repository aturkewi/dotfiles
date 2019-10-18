#!/usr/bin/env bash

# check if each tool is installed _before_ installing it
xcode-select --install
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew install git bash-completion
brew install asdf
brew install direnv
brew install gnupg
brew install hub

SCREENSHOT_DIR=~/Documents/Screenshots
# create dir for screenshots if doesn't exist
mkdir -p $SCREENSHOT_DIR
# set dir for screenshots
defaults write com.apple.screencapture location $SCREENSHOT_DIR
