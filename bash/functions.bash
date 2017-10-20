function reload {
    source $HOME/.bash_profile
}

function psg {
    ps aux | head -n1
    ps aux | grep $1 | grep -v grep
}
function ssh {
    # Change tab title
    local host=$(echo $1 | cut -d@ -f1)
    __iterm_set_title $host

    # Change tab color and reset back when conneciton is closed
    __iterm_set_bg_rgb 220 20 0 && \
        /usr/bin/ssh $@ && \
        __iterm_set_bg_reset
}

function gcloc {
    cloc $(git ls-files)
}

function shuf {
    awk 'BEGIN {srand(); OFMT="%.17f"} {print rand(), $0}' "$@" | \
       sort -k1,1n | \
       cut -d' ' -f2-
}

function __bash_ssh_complete {
    local cur=${COMP_WORDS[COMP_CWORD]}
    local opts=$(cat $HOME/.ssh/known_hosts | cut -d' ' -f1 | cut -d, -f1)
    COMPREPLY=($(compgen -o nospace -W "$opts" -- $cur))
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
complete -F _cg cg

function __bash_directory_complete {
    local cur=${COMP_WORDS[COMP_CWORD]}
    COMPREPLY=($(compgen -o nospace -W "$(ls $1)" -- $cur))
}
