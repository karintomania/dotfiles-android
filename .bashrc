alias ll="ls -lah"
alias xcp="termux-clipboard-set"
alias xpaste="termux-clipboard-get"
alias xshd="pkill sshd"

alias speak="termux-tts-speak"

function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(command cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		builtin cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}

