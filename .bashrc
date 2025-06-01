PATH="$PATH:$HOME/.local/bin"

alias ll="ls -lah"
alias xcp="termux-clipboard-set"
alias xpaste="termux-clipboard-get"
alias xshd="pkill sshd"
alias mkcdir='f() { mkdir -- "$1" && cd -- "$1" }; f'
alias what='echo $(whoami)@$(hostname)'

# best audio but no better than 480p
alias ytv="yt-dlp -S "height:480" --merge-output-format mp4"
alias yta="yt-dlp -x --audio-format mp3"

alias speak="termux-tts-speak"

function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(command cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		builtin cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}

