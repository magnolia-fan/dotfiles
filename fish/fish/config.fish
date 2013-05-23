set -U EDITOR vi

set -x FISH $HOME/.config/fish
set -x DF $HOME/.dotfiles
set -x PROJECTS $HOME/Code

set -x fish_greeting ''

. $FISH/includes/alias.fish
. $FISH/includes/ruby.fish
. $FISH/includes/path.fish
