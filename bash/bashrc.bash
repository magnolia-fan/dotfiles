export TERM=xterm-256color
export EDITOR=vim

# Colors
export CLICOLOR=1
export LSCOLORS=Exfxcxdxbxegedabagacad

export EDITOR=vim
export PROJECTS=$HOME/Code

# Go
export GOROOT=$PROJECTS/go
export GOPATH=$HOME/go

export SSL_CERT_FILE="/usr/local/opt/curl-ca-bundle/share/ca-bundle.crt"

function __bash_import { source $HOME/.bash/$1.bash; }
__bash_import "functions_internal"
__bash_import "history"
__bash_import "path"
__bash_import "format"
__bash_import "iterm"
__bash_import "alias"
__bash_import "prompt"
__bash_import "functions"
__bash_import "docker"
__bash_import "secrets"
# __bash_import "homebrew_completions"


if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

#
# Misc
#

# . $HOME/.config/on_reboot.sh

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"
