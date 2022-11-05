#!/bin/zsh

# XDG base directories
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"

# applications
export EDITOR="nvim"
export VISUAL="nvim"
export TERMINAL="alacritty"
export BROWSER="firefox"

# config dir
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export DOCKER_CONFIG="$XDG_CONFIG_HOME/docker"
export STARSHIP_CONFIG="$XDG_CONFIG_HOME/starship/config.toml"

# locale
export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

# llvm
export LDFLAGS="-L/usr/local/opt/llvm/lib"
export CPPFLAGS="-I/usr/local/opt/llvm/include"

# pyenv
export PYENV_ROOT="$HOME/.pyenv"

# go
export GOPATH="$HOME/go"
export GOROOT="/usr/local/opt/go/libexec"

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


# PATH
path+=/usr/local/opt/llvm/bin   # llvm
path+=/usr/local/opt/fzf/bin    # fzf
path+=$HOME/.local/bin          # pipx
path+=$HOME/.cargo/bin          # cargo
path+=$GOPATH/bin               # go user bin
path+=$GOROOT/bin               # go lib bin
export PATH

# FPATH
fpath+=$ZDOTDIR/.zfunc                      # autocompletion poetry and docker
fpath+=$ZDOTDIR/plugins/zsh-completions/src # additional completion definitions
export FPATH
