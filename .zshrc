ZSH_THEME="modified"
plugins=(git zsh-autosuggestions)

export EDITOR="code --wait"
alias ls="ls -a --color=auto"
alias yarninstall="npm install --global yarn"
alias yarncode="yarn dlx @yarnpkg/sdks vscode"

if [ -z "$TMUX" ] && [ "$TERM" = "xterm-kitty" ]; then
  tmux attach || exec tmux new-session && exit;
fi
