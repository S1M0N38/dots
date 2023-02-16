#!/bin/zsh

# XDG base directories
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"

# XDG Base Directory
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export DOCKER_CONFIG="$XDG_CONFIG_HOME/docker"
export STARSHIP_CONFIG="$XDG_CONFIG_HOME/starship/config.toml"
export JUPYTER_CONFIG_DIR="$XDG_CONFIG_HOME/jupyter"
export NVM_DIR="$XDG_CONFIG_HOME/nvm"
export PYENV_ROOT="$XDG_DATA_HOME/pyenv"
export VIMINIT='let $MYVIMRC="$XDG_CONFIG_HOME/vim/vimrc" | source $MYVIMRC'
export WORKON_HOME="$XDG_DATA_HOME/virtualenvs"
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/npm/npmrc"
export TERMINFO="$XDG_DATA_HOME/terminfo"
export TERMINFO_DIRS="$XDG_DATA_HOME/terminfo:/usr/share/terminfo"
export PYTHONPYCACHEPREFIX="$XDG_CACHE_HOME/python"
export PYTHONUSERBASE="$XDG_DATA_HOME/python"
export CARGO_HOME="$XDG_DATA_HOME/cargo"
export RUSTUP_HOME="$XDG_DATA_HOME/rustup"
export GNUPGHOME="$XDG_DATA_HOME/gnupg"

# applications
export EDITOR="vim"
export VISUAL="lvim"
export TERMINAL="alacritty"

# locale
export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

# papis.nvim compilation
export MACOSX_DEPLOYMENT_TARGET="12.6"
export YAML_DIR="/usr/local/Cellar/libyaml/0.2.5/"

# go
export GOPATH="$HOME/go"
export GOROOT="/usr/local/opt/go/libexec"

# lf
export LF_COLORS="$XDG_CONFIG_HOME/lf/colors"
export LF_ICONS="$XDG_CONFIG_HOME/lf/icons"

# bat
export BAT_THEME="gruvbox-dark"

# gnuplot 
export GNUTERM="qt font \"Arial,10\""

# fzf
export FZF_DEFAULT_COMMAND="fd --type f --hidden --follow --exclude .git"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_DEFAULT_OPTS="
 --color fg:#ebdbb2,bg:#282828,hl:#fabd2f
 --color fg+:#ebdbb2,bg+:#3c3836,hl+:#fabd2f
 --color info:#83a598,prompt:#bdae93,spinner:#fabd2f
 --color pointer:#83a598,marker:#fe8019,header:#665c54"
export FZF_CTRL_T_OPTS="
  --no-height 
  --preview 'bat --color=always --style=numbers --line-range=:500 {}'"

# kaggle
export KAGGLE_CONFIG_DIR="$XDG_CONFIG_HOME/kaggle"

# PATH
path+=/usr/local/opt/llvm/bin   # llvm
path+=/usr/local/opt/fzf/bin    # fzf
path+=$HOME/.local/bin          # pipx
path+=$CARGO_HOME/env           # cargo
path+=$GOPATH/bin               # go user bin
path+=$GOROOT/bin               # go lib bin
export PATH

# FPATH
fpath+=$ZDOTDIR/.zfunc                      # autocompletion poetry and docker
fpath+=$ZDOTDIR/plugins/zsh-completions/src # additional completion definitions
export FPATH
