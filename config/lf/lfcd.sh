# Change working dir in shell to last dir in lf on exit (adapted from ranger).
# https://github.com/gokcehan/lf/issues/785#issuecomment-1133989624

lf () {
    local tempfile="$(mktemp)"
    command lf -command "map Q \$echo \$PWD >$tempfile; lf -remote \"send \$id quit\"" "$@"
    if [[ -f "$tempfile" ]] && [[ "$(cat -- "$tempfile")" != "$(echo -n $(pwd))" ]]; then
		  cd -- "$(cat "$tempfile")" || return
    fi
    command rm -f -- "$tempfile" 2>/dev/null
}
