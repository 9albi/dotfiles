

# default paths
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_BIN_HOME="$HOME/bin"

# gpg config
export GPG_TTY=$(tty)

# Go
export GOPATH="$HOME/go"
PATH="$GOPATH/bin:/usr/local/go/bin:$PATH"

# Cargo
PATH="$HOME/.cargo/bin:$PATH"

# nvim
export VISUAL="nvim"
export EDITOR=$VISUAL
export KUBE_EDITOR="nvim"

# atuin
PATH="$HOME/.atuin/bin:$PATH"

export PATH="$HOME/.local/bin/:$PATH"
