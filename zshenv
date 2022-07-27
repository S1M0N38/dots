#!/bin/zsh XDG
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"

# editor
export EDITOR="nvim"
export VISUAL="nvim"

# locale
export LC_ALL="en_US.UTF-8"
export LANG="en_US.UTF-8"

# llvm
export LDFLAGS="-L/usr/local/opt/llvm/lib"
export CPPFLAGS="-I/usr/local/opt/llvm/include"

# zsh
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"

# docker
export DOCKER_CONFIG="$XDG_CONFIG_HOME/docker"

# startship
export STARSHIP_CONFIG="$XDG_CONFIG_HOME/starship/config.toml"

# bat
export BAT_THEME="gruvbox-dark"

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
