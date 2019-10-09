# Enable debug
# set -xv

export TERM=xterm-256color
export EDITOR=vim

# Colors
export CLICOLOR=1
export LSCOLORS=Exfxcxdxbxegedabagacad

export EDITOR=vim
export PROJECTS=$HOME/Code

# Go
# export GOROOT=$HOME/go/lang
export GOPATH=$HOME/go/path

function __bash_import { source $HOME/.bash/$1.bash; }
__bash_import "functions_internal"
__bash_import "history"
__bash_import "path"
__bash_import "format"
__bash_import "iterm"
__bash_import "alias"
__bash_import "prompt"
__bash_import "functions"
__bash_import "gover"
__bash_import "docker"
__bash_import "secrets"

# Homebrew bash completions
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

#
# Misc
#

alias ag=rg
# export SSL_CERT_FILE="/usr/local/opt/curl-ca-bundle/share/ca-bundle.crt"

export PATH="/usr/local/opt/avr-gcc@8/bin:$PATH"

export LDFLAGS="-L/usr/local/opt/openssl/lib"
export CPPFLAGS="-I/usr/local/opt/openssl/include"
export PKG_CONFIG_PATH="/usr/local/opt/openssl/lib/pkgconfig"

export PATH="$HOME/.cargo/bin:$PATH"
