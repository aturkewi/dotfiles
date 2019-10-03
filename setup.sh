#!/usr/bin/env bash

xcode-select --install
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew install git bash-completion
brew install asdf
brew install direnv
brew install gnupg