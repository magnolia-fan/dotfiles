set -x EDITOR vim

set -x FISH $HOME/.config/fish
set -x DF $HOME/.dotfiles
set -x PROJECTS $HOME/Code

set -x GOPATH $HOME/go

set -x PYTHONSTARTUP $HOME/.pythonrc.py
set -x PIP_REQUIRE_VIRTUALENV false
set -x PIP_DOWNLOAD_CACHE ~/.pip/cache
set -x WORKON_HOME ~/.virtualenvs
set -g VIRTUALFISH_COMPAT_ALIASES

set -x fish_greeting ''

set -x DOCKER_HOST tcp://localhost:4243

# status --is-interactive; and . (rbenv init -|psub)

. $FISH/includes/alias.fish
. $FISH/includes/ruby.fish
. $FISH/includes/path.fish
. $FISH/includes/virtualenv.fish
. $FISH/includes/antlr.fish

set -x SSL_CERT_FILE /usr/local/opt/curl-ca-bundle/share/ca-bundle.crt
