# Go version manager
# Step 1: Download & Extract
# Step 2: mv ~/Downloads/go ~/go/versions/x.y.z
# GOROOT=$HOME/go/lang
# GOPATH=$HOME/go/path
function gover  { ln -sfn $HOME/go/versions/$1 $HOME/go/lang; }
function _gover { __bash_directory_complete $HOME/go/versions; }
complete -F _gover gover

function godl {
    wget https://dl.google.com/go/go$1.darwin-amd64.tar.gz -O /tmp/go$1.darwin-amd64.tar.gz
    mkdir /tmp/go$1
    tar -xzf /tmp/go$1.darwin-amd64.tar.gz -C /tmp/go$1
    mv /tmp/go$1/go $HOME/go/versions/$1
    rmdir /tmp/go$1
}
function __gover_download_list {
    curl -s https://golang.org/dl/ \
        | grep "https://dl.google.com" \
        | cut -d '"' -f6 \
        | cut -d/ -f5 \
        | cut -d. -f1-3 \
        | cut -c3- \
        | grep -e '[0-9]\.[0-9]*\.[0-9]' \
        | sort -Vur
}
function _godl {
    __bash_complete "$(__gover_download_list $1)"
}
complete -F _godl godl
