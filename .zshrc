export DOCKER_HOST=unix://$HOME/.colima/default/docker.sock
export EDITOR="code --wait"
alias ls="ls -a --color=auto"
alias yarninstall="npm install --global yarn"
alias yarncode="yarn dlx @yarnpkg/sdks vscode"

if [ -z "$TMUX" ]; then
  tmux attach || exec tmux new-session && exit;
fi
