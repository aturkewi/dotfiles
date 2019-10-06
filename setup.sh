#!/usr/bin/env bash

# check if each tool is installed _before_ installing it
xcode-select --install
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew install git bash-completion
brew install asdf
brew install direnv
brew install gnupg
brew install hub

# create dir for screenshots
# set dir for screenshots
