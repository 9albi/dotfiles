#############################################################
# ~/.Brewfile - Software Installs for MacOS                 #
#                                                           #
# List of packages to be installed / updated via Homebrew   #
# Apps are sorted by category, and arranged alphabetically  #
# Be sure to delete / comment out anything you do not need  #
# Usage, run: $ brew bundle --global --file $HOME/.Brewfile #
# Source GH repository: https://github.com/lissy93/Brewfile #
# See brew docs for more info: https://docs.brew.sh/Manpage #
#                                                           #
# License: MIT © Alicia Sykes 2022 <https://aliciasykes.com>#
#############################################################

# Options
cask_args appdir: '~/Applications', require_sha: true

# Taps
tap 'homebrew/bundle'
tap 'homebrew/services'

#############################################################
# UI                                                        #
#############################################################

# Terminal
cask 'kitty'

brew 'terminal-notifier' # Trigger Mac notifications from terminal

cask 'alt-tab'        # Much better alt-tab window switcher
cask 'rectangle'      # Move and resize windows using keyboard shortcuts or snap areas
cask 'stats'          # System resource usage in menubar
cask 'raycast'        # Spotlight alternative
cask 'shottr'         # Better screenshot utility

# Prompt
brew 'starship'  # The minimal, blazing-fast, and infinitely customizable prompt for any shell

# Fonts
cask 'font-caskaydia-mono-nerd-font'

#############################################################
# Command Line                                              #
#############################################################

# CLI Essentials
brew 'git'          # Version controll
brew 'tmux'         # Term multiplexer

# CLI Basics
brew 'wget'         # Internet file retriever
brew 'gawk'         # GNU awk utility
brew 'bat'          # Output highlighting (better cat)
brew 'eza'          # Modern, maintained replacement for ls 
brew 'fzf'          # Fuzzy file finder and filtering
brew 'just'         # Powerful command runner (better make)
brew 'jq'           # JSON parser, output and query files
brew 'yq'           # A portable command-line YAML, JSON and XML processor
brew 'procs'        # Advanced process viewer (better ps)
brew 'ripgrep'      # Searching within files (better grep)
brew 'rsync'        # Fast incremental file transfer
brew 'sd'           # RegEx find and replace (better sed)
brew 'tldr'         # Community-maintained docs (better man)
brew 'trash-cli'    # Record and restore removed files
brew 'xsel'         # Copy paste access to the X clipboard
brew 'zoxide'       # Auto-learning navigation (better cd)
brew 'direnv'       # Load/unload environment variables based on $PWD
brew 'atuin'

brew 'age'         # A simple, modern and secure encryption tool (and Go library) with small explicit keys, no config options, and UNIX-style composability
brew 'teller'

# CLI Monitoring and Performance Apps
brew 'bmon'         # Bandwidth utilization monitor 
brew 'htop'         # An interactive process viewer for Unix
brew 'ctop'         # Container metrics and monitoring
brew 'doggo'          # DNS lookup client (better dig)
brew 'bpytop'       # Resource monitoring (like htop)

# CLI Productivity Apps
brew 'khal'         # Calendar client
brew 'mutt'         # Email client
brew 'newsboat'     # RSS / ATOM reader
brew 'pass'         # Password store
brew 'rclone'       # Manage cloud storage
brew 'task'         # Todo + task management
brew 'navi'         # Browse, search, read cheat sheets

# CLI Development Suits
brew 'httpie'       # HTTP / API testing testing client
brew 'lazygit'      # Full Git management app

# PGP (Pretty Good Privacy)
brew 'gnupg' # GNU Pretty Good Privacy (PGP) package
if OS.mac?
brew 'pinentry-mac'                  # Pinentry for GPG on Mac
tap 'jorgelbg/tap'
brew 'pinentry-touchid' # Custom GPG pinentry program for macOS that allows using Touch ID
end

# Security Utilities and Data Encryption
brew 'dnscrypt-proxy' # Proxy for using encrypted DNS
brew 'openssl'        # Cryptography and SSL/TLS Toolkit

# AI
cask 'ollama'

#############################################################
# Software Development                                      #
#############################################################

# Development Apps

cask 'postman'        # HTTP API testing app
cask 'visual-studio-code' # Code editor
brew 'neovim'       # Text editor


# Development Langs, Compilers, Package Managers and SDKs
brew 'gcc'            # GNU C++ compilers
brew 'go'             # Compiler for Go Lang
brew 'lua'            # Lua interpreter
brew 'luarocks'       # Package manager for Lua
brew 'python@3.12'    # Python interpreter
brew 'rust'           # Rust language


#############################################################
# DevOps                                                    #
#############################################################

# Containers
brew 'docker'         # Containers
brew 'lazydocker'     # Full Docker management app

# Ansible
brew 'ansible'        # Automate deployment, configuration, and upgrading

# Kubernetes
brew 'kubernetes-cli' # Kubernetes command-line interface
brew 'kube-linter'
brew 'krew'           # Plugin manager for kubectl
brew 'k9s'            # Kubernetes CLI to manage clusters in style
brew 'kubectx'        # Tool that can switch between kubectl contexts easily and create aliases
brew 'kustomize'      # Customization of kubernetes YAML configurations

tap 'helm/tap'
brew 'helm'           # Kubernetes package manager
brew 'helmfile'       # A declarative spec for deploying Helm Charts

brew 'argo'
brew 'argocd'

brew "trivy"                 # kubernetes vuln/misconfiguration scanner 

# Terraform
tap 'hashicorp/tap'
brew 'terraform'
brew 'terraform-docs' # Tool to generate documentation from Terraform modules
tap 'minamijoyo/tfschema'
brew 'tfschema' # A schema inspector for Terraform providers
brew 'terragrunt' # Thin wrapper for Terraform e.g. for locking state
tap 'busser/tap'
brew 'tfautomv' # Automatic Terraform moved blocks

# Github
brew 'act'            # Run your Github Actions locally
brew 'gh'             # Interact with GitHub PRs, issues, repos

# Gitlab
brew 'glab'


#############################################################
# Desktop Applications                                      #
#############################################################

# Creativity
cask 'gimp'         # Photo editor

# Media
cask 'calibre'      # E-Book reader
# cask 'spotify'      # Propietary music streaming
cask 'vlc'          # Media player
brew 'pandoc'       # Universal file converter

# Personal Applications
cask '1password'      # Password manager (proprietary)

# Browsers
cask 'firefox'

# Mac OS Mods and Imrovments
cask 'hiddenbar'
brew 'iproute2mac'    # MacOS port of netstat and ifconfig

# tap 'ckoekeishiya/formulae'
# brew 'skhd'           # Hotkey daemon for macOS
# brew 'karabiner-elements'

