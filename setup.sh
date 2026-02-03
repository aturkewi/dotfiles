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

if [ -d ~/.oh-my-zsh ]; then
	echo "oh-my-zsh is installed"
 else
 	echo "installing oh-my-zsh..."
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

brew install git
brew install asdf
brew install gnupg

brew install gh
gh alias set --clobber b "browse --branch $(git rev-parse --abbrev-ref HEAD)"

SCREENSHOT_DIR=~/Documents/Screenshots
mkdir -p $SCREENSHOT_DIR
# set dir for screenshots
defaults write com.apple.screencapture location $SCREENSHOT_DIR

# Install ZSH 'autoupdate' plugin
# git clone https://github.com/TamCore/autoupdate-oh-my-zsh-plugins $ZSH_CUSTOM/plugins/autoupdate
