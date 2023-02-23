#
# ~/.bashrc
#

shopt -s autocd
#export PS1="\[$(tput bold)\]\[$(tput setaf 1)\][\[$(tput setaf 3)\]\u\[$(tput setaf 2)\]@\[$(tput setaf 4)\]\h \[$(tput setaf 5)\]\W\[$(tput setaf 1)\]]\[$(tput setaf 7)\]\\$ \[$(tput sgr0)\]"

eval "$(pyenv init -)"


source $HOME/.bin/alias.sh
source $HOME/.bin/function.sh
source $HOME/.bin/export.sh

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

eval "$(starship init bash)"
