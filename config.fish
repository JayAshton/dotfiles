if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Do not show any greeting
function fish_greeting; end
function fish_right_prompt; end

# Fish Theme Stuff
# See https://github.com/oh-my-fish/oh-my-fish/blob/master/docs/Themes.md#bobthefish
set -g theme_powerline_fonts yes
set -g theme_nerd_fonts yes
set -g theme_color_scheme terminal-dark
set -g theme_display_git_master_branch yes
set -g theme_git_worktree_support yes
