export VISUAL="nvim"
export EDITOR=$VISUAL
export GPG_TTY=$(tty)

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi


PATH="$PATH:/opt/nvim-linux64/bin"
PATH="$PATH:$HOME/go/bin"
PATH="$PATH:/usr/local/go/bin"

export PATH=$PATH
