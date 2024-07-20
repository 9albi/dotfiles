export VISUAL="nvim"
export EDITOR=$VISUAL
export GPG_TTY=$(tty)

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# Go
if [ -d "$HOME/go" ]; then
  export GOPATH="$HOME/go"
  # export GOBIN="$GOPATH/bin"
  PATH="$PATH:/usr/local/go/bin"
fi


export PATH=$PATH
