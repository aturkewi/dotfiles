#!/bin/zsh

if xcode-select -p > /dev/null 2>&1; then
  echo "Xcode tools alreay installed!"
else
  echo "Installing xcode-select..."
  xcode-select --install
fi

if brew --version > /dev/null 2>&1; then
  echo "Hombrew is already installed!"
else
  echo "Installing homebrew..."
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Add Oh My ZSH install

brew install git
brew install asdf
brew install gnupg
brew install hub

SCREENSHOT_DIR=~/Documents/Screenshots
mkdir -p $SCREENSHOT_DIR
# set dir for screenshots
defaults write com.apple.screencapture location $SCREENSHOT_DIR
