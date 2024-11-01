# https://blog.patshead.com/2011/04/improve-your-oh-my-zsh-startup-time-maybe.html
skip_global_compinit=1

# http://disq.us/p/f55b78
setopt noglobalrcs

export SYSTEM=$(uname -s)

# https://github.com/sorin-ionescu/prezto/blob/master/runcoms/zshenv
# Ensure that a non-login, non-interactive shell has a defined environment.
if [[ ( "$SHLVL" -eq 1 && ! -o LOGIN ) && -s "${ZDOTDIR:-$HOME}/.zprofile" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprofile"
fi


# default paths
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_BIN_HOME="$HOME/.local/bin"

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
export MANPAGER='nvim +Man!'

# atuin
PATH="$HOME/.atuin/bin:$PATH"

# fzf
PATH="$HOME/.fzf/bin:$PATH"

# Rancher
PATH="$HOME/.rd/bin:$PATH"


export PATH="$HOME/.local/bin/:$HOME/scripts/:$PATH"
export PATH="/usr/local/sbin:$PATH"
