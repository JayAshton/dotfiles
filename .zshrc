export DOCKER_HOST="unix://${HOME}/.colima/default/docker.sock"
export DOCKER_CONTEXT=colima
export TESTCONTAINERS_DOCKER_SOCKET_OVERRIDE=/var/run/docker.sock
export TESTCONTAINERS_HOST_OVERRIDE=$(colima ls -j | jq -r '.address')
export TESTCONTAINERS_RYUK_DISABLED=true

export EDITOR="code --wait"
alias ls="ls -a --color=auto"
alias yarninstall="npm install --global yarn"
alias yarncode="yarn dlx @yarnpkg/sdks vscode"

if [ -z "$TMUX" ]; then
  tmux attach || exec tmux new-session && exit;
fi
