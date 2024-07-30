# Add homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

# Allow for shell completion
# https://docs.brew.sh/Shell-Completion
FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"

source ~/.zsh/oh-my-zsh
source ~/.zsh/environment
source ~/.zsh/functions.sh

if [ -f ~/.zsh-local ]; then
  echo "Loading local ZSH config"
  source ~/.zsh-local
fi

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8
