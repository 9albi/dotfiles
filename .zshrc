
bindkey -e        # Emacs keybindings
# bindkey -v        # Vim Keybindings
## Keybindings section

bindkey "^[[3~" delete-char              # Delete key
bindkey '^[[2~' overwrite-mode           # Insert key
bindkey "^[[H"  beginning-of-line        # Home
bindkey "^[[F"  end-of-line              # End
bindkey '^[[Z' reverse-menu-complete     # Shift-Tab

bindkey '^[[1;5C' forward-word           # ctrl + ->
bindkey '^[[1;5D' backward-word           # ctrl + <-


# --- History --- # 
bindkey ' ' magic-space                  # History expansion on space

# Ensure that commands are added to the history immediately
setopt inc_append_history
# Record the timestamp of each command in HISTFILE
setopt extended_history
# Skip duplicates while searching
setopt hist_find_no_dups
# If a new command is a duplicate, remove the older one
setopt histignorealldups
# Don't erase history
setopt histappend
# Share history between session/terminals
setopt share_history
# Add immediately
setopt inc_append_history

# Tell it where to save the history
HISTFILE=~/.zhistory
# The number of lines from $HISTFILE to read at the start of an interactive session
HISTSIZE=50000
# The number of lines of your history you want saved
SAVEHIST=50000

# https://unix.stackexchange.com/a/97844
autoload -U history-search-end

zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end

bindkey '^P' history-beginning-search-backward-end           # CTRL+p
bindkey '^N' history-beginning-search-forward-end            # CTRL+n



# --- Misc --- #

# Theming section
autoload -U colors
colors

# force the path (PATH) array to hold unique values
typeset -U path path

# Extended globbing. Allows using regular expressions with *
setopt extendedglob
if [[ "$SYSTEM" == "Darwin" ]]; then
  # Case insensitive globbing
  setopt nocaseglob
fi


# Array expension with parameters
setopt rcexpandparam
# Don't warn about running processes when exiting
setopt nocheckjobs
# Sort filenames numerically when it makes sense
setopt numericglobsort
# No beep
setopt nobeep

alias reload="source ~/.zshrc"

alias mkdir="mkdir -p"

alias dir='dir --color=auto'
alias vdir='vdir --color=auto'

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

alias c='clear'

# Pretty print the path
alias path='echo $PATH | tr -s ":" "\n"'

note() {
  if [[ ! -z $@ ]]; then 
    echo "date: $(date)" >> $HOME/drafts.txt
    echo "$@" >> $HOME/drafts.txt
    echo "" >> $HOME/drafts.txt
  fi
}

timezsh() {
  shell=${1-$SHELL}
  for i in $(seq 1 4); do /usr/bin/time $shell -i -c exit; done
}



# --- Completions --- #

# Use vim keys to select autocompletion
_comp_options+=(globdots)		# Include hidden files.

zmodload -i zsh/complist
autoload -Uz compinit
if [ $(date +'%j') != $(stat -f '%Sm' -t '%j' ~/.zcompdump) ]; then
  compinit
else
  compinit -C
fi

bindkey -M menuselect '^h' vi-backward-char
bindkey -M menuselect '^k' vi-up-line-or-history
bindkey -M menuselect '^l' vi-forward-char
bindkey -M menuselect '^j' vi-down-line-or-history

# zsh autosuggestions completion
bindkey '^ ' autosuggest-accept

# edit command in editor
autoload -z edit-command-line
zle -N edit-command-line
bindkey "^X^E" edit-command-line

# case insensitive autocompletion
zstyle ":completion:*" matcher-list "" "m:{a-z}={A-Z}" "m:{a-zA-Z}={A-Za-z}" "r:|[._-]=* r:|=* l:|=*"
# ignore hosts file for ssh/scp autocompletion
zstyle ':completion:*' hosts off
## Speed up completions
zstyle ':completion:*' accept-exact '*(N)'
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path ~/.zsh/cache

# to activate the menu, press tab twice
zstyle ':completion:*' menu select

# formatting and messages
zstyle ':completion:*' verbose yes
zstyle ':completion:*' group-name ''
# do not autoselect the first completion entry
unsetopt menu_complete
# allow gloobing, e.g apt update kernel*
unsetopt nomatch
# autocompletion CLI switches for aliases
setopt complete_aliases
# show colors on menu completion
zstyle ':completion:*' list-colors
# `/` as word delimiter as well
autoload -U select-word-style
select-word-style bash

# Don't consider certain characters part of the word
WORDCHARS=${WORDCHARS//\/[&.;]}

ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=20
# https://github.com/zsh-users/zsh-autosuggestions/issues/619
ZSH_AUTOSUGGEST_CLEAR_WIDGETS+=(history-beginning-search-backward-end history-beginning-search-forward-end)
# Include custom aliases
if [[ -f ~/.aliases.local ]]; then
  source ~/.aliases.local
fi



# --- Eza --- #
alias ls='eza -x --icons=always --git --group-directories-first'
alias lst='eza -x --icons --git --group-directories-first -T'
alias l='ls'
alias la='eza -a -x --icons --git --group-directories-first --no-user'
alias ll='eza -l -x --icons --git --group-directories-first --no-user'
alias lla='eza -l -a -x --icons --git --group-directories-first --no-user'


# --- zoxide --- #
eval "$(zoxide init zsh)"
alias cd='z'
alias ..= "cd .."
alias -- -="cd -"

# if only directory path is entered, cd there.
setopt autocd


# --- bat --- #
if [ $SYSTEM == "Darwin" ]; then
  alias cat="bat --theme gruvbox-dark --paging=never"
else
  alias cat="batcat --theme gruvbox-dark --paging=never"
fi



# --- kubernetes --- #
eval "$(kubectl completion zsh)"
alias k="kubectl"
PATH="$HOME/.rd/bin:$PATH"



# --- fzf --- #
PATH="$HOME/.fzf/bin:$PATH"


# --- Atuin --- #
PATH="$HOME/.atuin/bin:$PATH"
eval "$(atuin init zsh --disable-up-arrow)"

# # https://gist.github.com/nikvdp/f72ff1776815861c5da78ceab2847be2
# bindkey '^E' _atuin_search_widget
# export ATUIN_NOBIND="true"
# fzf-atuin-history-widget() {
#   local selected num
#   setopt localoptions noglobsubst noposixbuiltins pipefail no_aliases 2>/dev/null

#   # local atuin_opts="--cmd-only --limit ${ATUIN_LIMIT:-5000}"
#   local atuin_opts="--cmd-only"
#   local fzf_opts=(
#               --height=${FZF_TMUX_HEIGHT:-80%}
#               --tac
#               "-n2..,.."
#               --tiebreak=index
#               "--query=${LBUFFER}"
#               "+m"
#               '--preview=echo {}'
#               "--preview-window=down:3:hidden:wrap"
#               "--bind=?:toggle-preview"
#               "--bind=ctrl-d:reload(atuin search $atuin_opts -c $PWD),ctrl-r:reload(atuin search $atuin_opts)"
#           )

#   selected=$(
#       eval "atuin search ${atuin_opts}" |
#           fzf "${fzf_opts[@]}"
#   )
#   local ret=$?
#   if [ -n "$selected" ]; then
#       # the += lets it insert at current pos instead of replacing
#       LBUFFER+="${selected}"
#   fi
#   zle reset-prompt
#   return $ret
# }

# zle -N fzf-atuin-history-widget
# bindkey '^R' fzf-atuin-history-widget



# --- starship --- #
eval "$(starship init zsh)"
eval "$(starship completions zsh)"



# --- direnv --- #
eval "$(direnv hook zsh)"


# --- tmux --- #
# if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
#   exec tmux attach-session -t misc
# fi

# --- mise --- #
eval "$(mise activate zsh)"

# --- homebrew --- #
if [ "$SYSTEM" == "Darwin" ]; then
  HOMEBREW_PREFIX="/usr/local"
  source $HOMEBREW_PREFIX/share/zsh-autosuggestions/zsh-autosuggestions.zsh
else
  source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
fi

export PATH="$HOME/.local/bin/:$HOME/scripts/:$PATH"
export PATH="/usr/local/sbin:$PATH"

