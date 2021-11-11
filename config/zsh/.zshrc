source "$ZDOTDIR/secrets"

# aliases
alias pi="ssh pi@192.168.178.101"
alias f1="mpv --no-resume-playback http://127.0.0.1:8080/playlist.m3u8"
alias msl="cd ~/Developer/morningstreams/ && python3 f1.py"
alias ms="cd ~/Developer/morningstreams/ && python3 f1.py --ip 192.168.178.100"
alias ace="docker run --name ace --publish 6878:6878 --rm --tmpfs \
    '/dev/disk/by-id:noexec,rw,size=4k' \
    magnetikonline/acestream-server"

alias ls='exa --group-directories-first'
alias ll='exa -lg --group-directories-first'
alias la='exa -lag --group-directories-first'
alias lt='exa --tree --level=2 --group-directories-first'
alias ltt='exa --tree --level=3 --group-directories-first'

# path
path+=/usr/local/opt/llvm/bin   # llvm
path+=$HOME/.local/bin          # pipx
export PATH

# fpath
fpath+=$ZDOTDIR/.zfunc          # poetry autocompletion
export FPATH

# compiation C
function c ()  { cc $1 && ./a.out && rm a.out; }
# generate .gitignore
function gi() { curl -sLw n https://www.toptal.com/developers/gitignore/api/$@ ;}

# startship prompt
eval "$(starship init zsh)"

# zsh magic
autoload -Uz compinit && compinit
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# pipx completions
autoload -Uz bashcompinit && bashcompinit
eval "$(register-python-argcomplete pipx)"
