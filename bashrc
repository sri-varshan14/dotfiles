#!/bash/bin

source $HOME/.bin/alias.sh
source $HOME/.bin/export.sh
source $HOME/.bin/function.sh

eval "$(oh-my-posh init bash --config ~/.poshthemes/catppuccin_mocha.omp.json)"
. "$HOME/.cargo/env"
