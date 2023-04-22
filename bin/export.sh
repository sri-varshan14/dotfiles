
export LANG=en_IN.UTF-8
export TERM="xterm-256color"
export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=$HOME/.cargo/bin:$PATH
export PATH="$HOME/.pyenv/bin:$PATH"
export CUDA_PATH="/opt/cuda"
export FZF_DEFAULT_OPTS=" \
--color=bg+:#313244,bg:#1e1e2e,spinner:#f5e0dc,hl:#f38ba8 \
--color=fg:#cdd6f4,header:#f38ba8,info:#cba6f7,pointer:#f5e0dc \
--color=marker:#f5e0dc,fg+:#cdd6f4,prompt:#cba6f7,hl+:#f38ba8 --height 40% --layout=reverse --border"
export RUST_SRC_PATH="$(rustc --print sysroot)/lib/rustlib/src/rust/src"
source "$HOME/.cargo/env"

