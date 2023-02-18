# Enable zap plugin manager
source "$XDG_DATA_HOME/zap/zap.zsh"

# Basics
setopt no_beep

# Changing Directories
setopt auto_cd

# History
setopt append_history
setopt extended_history
setopt inc_append_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_ignore_space
setopt hist_find_no_dups
setopt hist_reduce_blanks
setopt share_history

# Correction
unsetopt correct_all
setopt correct

# Enble colors
autoload -Uz colors && colors

# Import zsh files
plug "$ZDOTDIR/zsh-aliases"
plug "$ZDOTDIR/zsh-prompt"
plug "$ZDOTDIR/zsh-secrets"

# Plugins
plug "zap-zsh/vim"
plug "S1M0N38/auto-venv"
plug "zsh-users/zsh-autosuggestions"
plug "zsh-users/zsh-syntax-highlighting"
plug "zsh-users/zsh-completions"

# Completions for fzf
source "/usr/local/opt/fzf/shell/completion.zsh" 2> /dev/null
source "/usr/local/opt/fzf/shell/key-bindings.zsh"

# Completions zsh
zmodload zsh/complist
autoload -U compinit; compinit
_comp_options+=(globdots)
setopt always_to_end
setopt auto_menu
setopt auto_name_dirs
setopt complete_in_word
unsetopt menu_complete

# enable nvm
source "$NVM_DIR/nvm.sh"

# enable cd while using lf
source "$XDG_CONFIG_HOME/lf/lfcd.sh"

# key-bindings
bindkey -s '^e' '$VISUAL $(fzf)^M'
bindkey -s '^F' 'lf^M'
bindkey -s '^P' 'papis open^M'

# pyenv
eval "$(pyenv init -)"

# completions for python scripts 
# eval "$(register-python-argcomplete pipx)"
# eval "$(register-python-argcomplete jt)"

# startship prompt
# eval "$(starship init zsh)"
