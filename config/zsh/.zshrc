source "$ZDOTDIR/zsh-functions"

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
⚡️source "zsh-aliases"
⚡️source "zsh-prompt"
⚡️source "zsh-secrets"

# Plugins
⚡️plugin "zap-zsh/vim"
⚡️plugin "zsh-users/zsh-autosuggestions"
⚡️plugin "zsh-users/zsh-syntax-highlighting"
⚡️plugin "zsh-users/zsh-completions"

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

# gpg prompt (export here, not in zshenv)
export GPG_TTY=$(tty)

# enable nvm
source "$NVM_DIR/nvm.sh"

# enable cd while using lf
source "$XDG_CONFIG_HOME/lf/lfcd.sh"

# key-bindings
bindkey -s '^e' '$VISUAL $(fzf)^M'
bindkey -s '^F' 'lf^M'

# completions for python scripts 
# eval "$(register-python-argcomplete pipx)"
# eval "$(register-python-argcomplete jt)"

# pyenv
# eval "$(pyenv init -)"

# startship prompt
# eval "$(starship init zsh)"
