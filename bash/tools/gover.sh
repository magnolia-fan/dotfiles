# Go version manager
# Step 1: Download & Extract
# Step 2: mv ~/Downloads/go ~/go/versions/x.y.z
# GOROOT=$HOME/go/lang
# GOPATH=$HOME/go/path

platform=linux-amd64

function gover  {
    [[ "$1" == "" ]] && go version && return
    # TODO: Check it exists
    ln -sfn $HOME/go/versions/$1 $HOME/go/lang
}
function _gover { __bash_directory_complete $HOME/go/versions; }
complete -F _gover gover

function godl {
    wget https://dl.google.com/go/go$1.$platform.tar.gz -O /tmp/go$1.$platform.tar.gz
    mkdir /tmp/go$1
    tar -xzf /tmp/go$1.$platform.tar.gz -C /tmp/go$1
    mv /tmp/go$1/go $HOME/go/versions/$1
    rmdir /tmp/go$1
}
function __gover_download_list {
    curl -s https://golang.org/dl/ \
        | grep "/dl/go" \
        | cut -d '"' -f6 \
        | cut -d/ -f3 \
        | sed -n -e 's/^go\([0-9]\{1,\}\.[0-9]\{1,\}\(\.[0-9]\{1,\}\)\?\).*/\1/p' \
        | sort -Vur
}
function _godl {
    __bash_complete "$(__gover_download_list $1)"
}
complete -F _godl godl
