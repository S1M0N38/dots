source "$ZDOTDIR/secrets"


# Aliases

alias f1="curl -s https://gist.githubusercontent.com/S1M0N38/90e18921822bfcc6e9a0785c81f8017b/raw/0ac33cb258f4250f646e4f22f6faa90684da6c10/f1.py | python3 -"
alias ace="docker run --publish 6878:6878 --rm --tmpfs \"/dev/disk/by-id:noexec,rw,size=4k\" magnetikonline/acestream-server"

# exa
alias ls='exa --group-directories-first'
alias ll='exa -lg --group-directories-first'
alias la='exa -lag --group-directories-first'
alias lt='exa --tree --level=2'
alias ltt='exa --tree --level=3'
