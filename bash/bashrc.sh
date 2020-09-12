# Enable debug
# set -xv

source /etc/profile

export TERM=xterm-256color
export EDITOR=vim

# Colors
export CLICOLOR=1
export LSCOLORS=Exfxcxdxbxegedabagacad


export EDITOR=vim
export PROJECTS=$HOME/Code

# Go
# GOROOT can be easily derived from go binary path
# export GOROOT=$HOME/go/lang
export GOPATH=$HOME/go/path

source $HOME/dotfiles/bash/functions_internal.sh
source $HOME/dotfiles/bash/history.sh
source $HOME/dotfiles/bash/path.sh
source $HOME/dotfiles/bash/format.sh
source $HOME/dotfiles/bash/alias.sh
source $HOME/dotfiles/bash/prompt.sh
source $HOME/dotfiles/bash/functions.sh
source $HOME/dotfiles/bash/overrides.sh

for f in $HOME/dotfiles/bash/{tools,secrets}/*; do
	source $f
done

# Use bash-completion, if available
[[ $PS2 && -f /usr/share/bash-completion/bash_completion ]] && \
    . /usr/share/bash-completion/bash_completion

#
# Misc
#

export PATH="$HOME/.local/bin:$PATH"

# Disable Ruby 2.7 deprecation warnings
# export RUBYOPT='-W:no-deprecated -W:no-experimental'
export RUBYOPT=
