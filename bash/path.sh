# Dotfiles
export PATH=$PATH:$HOME/dotfiles/bin # Dotfiles scripts

# Ruby
export PATH=$HOME/.rbenv/versions/$(cat $HOME/.rbenv/version)/bin:$PATH # Gem binaries
export PATH=$HOME/.rbenv/shims:$PATH # Gem binaries

# Go
export PATH=$HOME/go/lang/bin:$PATH # Go package binaries
export PATH=$GOPATH/bin:$PATH # Go package binaries

# Rust
export PATH=$PATH:$HOME/.cargo/bin
