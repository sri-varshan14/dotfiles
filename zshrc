
HISTFILE=.zsh_history
bindkey '^r' history-incremental-search-backward

source $HOME/.bin/alias.sh
source $HOME/.bin/function.sh
source $HOME/.bin/export.sh

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

eval "$(pyenv init -)"
eval "$(starship init zsh)"
