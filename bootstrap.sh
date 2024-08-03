#!/bin/zsh

CURRENT_DIR=`pwd`
DOTFILES_PATH=`dirname "$0"`

symlink() {
  file=$1
  link=$2
  if [ ! -e "$link" ]; then
    ln -s $file $link
    echo "linked $file -> $link"
  fi
}


dotfiles=$(ls -A -I .git -I README.md -I bootstrap.sh $DOTFILES_PATH)
dotfiles=(${=dotfiles})

# For all files `$name` in the present folder except `*.sh`, `README.md`, `settings.json`, and `config`, backup the target file located at `~/.$name` and symlink `$name` to `~/.$name`
for name in $dotfiles; do
  if [ ! -d "$HOME/$name" ]; then
    symlink $DOTFILES_PATH/$name $HOME/$name
  else
    echo "$HOME/$name already exist!"
  fi
done

# Install zsh-syntax-highlighting plugin
# ZSH_PLUGINS_DIR="$HOME/.oh-my-zsh/custom/plugins"
# mkdir -p "$ZSH_PLUGINS_DIR" && cd "$ZSH_PLUGINS_DIR"
# if [ ! -d "$ZSH_PLUGINS_DIR/zsh-syntax-highlighting" ]; then
#   echo "-----> Installing zsh plugin 'zsh-syntax-highlighting'..."
#   git clone https://github.com/zsh-users/zsh-autosuggestions
#   git clone https://github.com/zsh-users/zsh-syntax-highlighting
# fi

# Symlink VS Code settings and keybindings to the present `settings.json` and `keybindings.json` files
# If it's a macOS
if [[ `uname` =~ "Darwin" ]]; then
  CODE_PATH=~/Library/Application\ Support/Code/User
# Else, it's a Linux
else
  CODE_PATH=~/.config/Code/User
  # If this folder doesn't exist, it's a WSL
  if [ ! -e $CODE_PATH ]; then
    CODE_PATH=~/.vscode-server/data/Machine
  fi
fi

# for name in settings.json keybindings.json; do
#   target="$CODE_PATH/$name"
#   backup $target
#   symlink $PWD/$name $target
# done

# Symlink SSH config file to the present `config` file for macOS and add SSH passphrase to the keychain
if [[ `uname` =~ "Darwin" ]]; then
  target=~/.ssh/config
  backup $target
  symlink $PWD/config $target
  ssh-add --apple-use-keychain ~/.ssh/id_ed25519
fi

# Refresh the current terminal with the newly installed configuration
# exec zsh

cd "$CURRENT_DIR"
echo "👌 Carry on"
