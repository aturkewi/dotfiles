# Add homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

# Allow for shell completion
# https://docs.brew.sh/Shell-Completion
FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"

source ~/.zsh/oh-my-zsh
source ~/.zsh/environment
source ~/.zsh/functions.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

source /Users/avi/.docker/init-zsh.sh || true # Added by Docker Desktop

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
