source "$ZDOTDIR/secrets"

# aliases
alias f1="curl -s https://gist.githubusercontent.com/S1M0N38/90e18921822bfcc6e9a0785c81f8017b/raw/80c340d21ad7ac700d4f86b54f202f762946a98d/f1.py | python3 -"
alias ace="docker run --publish 6878:6878 --rm --tmpfs \"/dev/disk/by-id:noexec,rw,size=4k\" magnetikonline/acestream-server"
alias ls='exa --group-directories-first'
alias ll='exa -lg --group-directories-first'
alias la='exa -lag --group-directories-first'
alias lt='exa --tree --level=2 --group-directories-first'
alias ltt='exa --tree --level=3 --group-directories-first'

# startship
eval "$(starship init zsh)"

# zsh magic
autoload -Uz compinit && compinit
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
