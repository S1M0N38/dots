#!/bin/zsh

# XDG
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$XDG_CONFIG_HOME/.local/share"
export XDG_CACHE_HOME="$XDG_CONFIG_HOME/.cache"

# editor
export EDITOR="nvim"
export VISUAL="nvim"

# zsh
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"

# docker
export DOCKER_CONFIG="$XDG_CONFIG_HOME/docker"

# gpg
export GPG_TTY=$(tty)

# startship
export STARSHIP_CONFIG="$XDG_CONFIG_HOME/starship/config.toml"