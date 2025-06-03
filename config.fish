#ilancosman/tide@v6
#jorgebucaran/nvm.fish
#edc/bass
#reitzig/sdkman-for-fish@v2.0.0

function fish_greeting; end

set -gx PATH /Users/jay.ashton/.nvm/versions/node/v22.12.0/bin $PATH
set -gx PATH /Users/jay.ashton/.sdkman/candidates/java/current/bin $PATH
set -gx PATH /Users/jay.ashton/.docker/bin $PATH
set -gx PATH /opt/homebrew/bin/docker-compose $PATH
set -gx PATH /opt/homebrew/bin $PATH

set -gx DOCKER_HOST unix://$HOME/.colima/default/docker.sock
set -gx EDITOR "code --wait"

alias ls="ls -a --color=auto"
alias yarninstall="npm install --global yarn"
alias yarncode="yarn dlx @yarnpkg/sdks vscode"

bass source "$HOME/.sdkman/bin/sdkman-init.sh"

bass source /opt/homebrew/opt/nvm/nvm.sh
bass source /opt/homebrew/opt/nvm/etc/bash_completion.d/nvm

if not set -q TMUX; and test "$TERM" = "xterm-kitty"
    tmux attach || exec tmux new-session
end
