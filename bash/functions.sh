function reload {
    source $HOME/.bashrc
}

# Count lines of code in files that are checked into the current Git repository
function gkloc {
    cloc $(git ls-files)
}

function shuf {
    awk 'BEGIN {srand(); OFMT="%.17f"} {print rand(), $0}' "$@" | \
       sort -k1,1n | \
       cut -d' ' -f2-
}

function __window_title {
    echo -ne "\033]0;$1\007"
}

function __bash_ssh_complete {
    __bash_complete "$(cat $HOME/.ssh/known_hosts | cut -d' ' -f1 | cut -d, -f1)"
}
complete -F __bash_ssh_complete ssh

#
# Directory shortcuts
#

function  h { cd $HOME/$1; }
function _h { __bash_directory_complete $HOME; }
complete -F _h h

function  c { cd $(realpath $PROJECTS/$1); }
function _c { __bash_directory_complete $PROJECTS; }
complete -F _c c

function  cg { cd $GOPATH/src/github.com/$1; }
function _cg { __bash_directory_complete $GOPATH/src/github.com; }
complete -W "$(dir -d $HOME/go/path/src/github.com/*/* | cut -d'/' -f8-)" cg

#
# Misc
#

function __bash_directory_complete {
    __bash_complete "$(ls $1)"
}

function __bash_complete {
    COMPREPLY=($(compgen -o nospace -W "$1" -- ${COMP_WORDS[COMP_CWORD]}))
}
