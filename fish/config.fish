source /usr/share/cachyos-fish-config/cachyos-config.fish

function y
	set tmp (mktemp -t "yazi-cwd.XXXXXX")
	command yazi $argv --cwd-file="$tmp"
	if read -z cwd < "$tmp"; and [ "$cwd" != "$PWD" ]; and test -d "$cwd"
		builtin cd -- "$cwd"
	end
	command rm -f -- "$tmp"
end

oh-my-posh init fish | source

alias claudey='claude --dangerously-skip-permissions'
alias claudea='claude --permission-mode acceptEdits'
alias codexy='codex --dangerously-bypass-approvals-and-sandbox'
alias codexa='codex --full-auto'
