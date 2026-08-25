source /usr/share/cachyos-fish-config/cachyos-config.fish

function y
	set tmp (mktemp -t "yazi-cwd.XXXXXX")
	command yazi $argv --cwd-file="$tmp"
	if read -z cwd < "$tmp"; and [ "$cwd" != "$PWD" ]; and test -d "$cwd"
		builtin cd -- "$cwd"
	end
	command rm -f -- "$tmp"
end

oh-my-posh init fish --strict --config ~/dotfiles/Oh-my-posh/config.json | source

alias claudey='claude --dangerously-skip-permissions'
alias claudea='claude --permission-mode acceptEdits'
alias codexy='codex --dangerously-bypass-approvals-and-sandbox'
alias codexa='codex --full-auto'

alias yay='paru'

# mimocode
fish_add_path /home/nero/.mimocode/bin
set -Ux MIMOCODE_DISABLE_CODEX_SKILLS 1
set -Ux MIMOCODE_DISABLE_CLAUDE_CODE_SKILLS 1
set -Ux MIMOCODE_DISABLE_BUILTIN_SKILLS 1
set -Ux MIMOCODE_DISABLE_EXTERNAL_SKILLS 1
