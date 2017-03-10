export PATH=/usr/local/bin:$PATH  # Homebrew tools
export PATH=$PATH:/usr/local/sbin # Homebrew apps
export PATH=$PATH:$HOME/.dotfiles/bin # My stuff

# NodeJS
# export PATH=$PATH:/usr/local/share/npm/bin

# Ruby
export PATH=$PATH:$HOME/.rbenv/plugins/ruby-build/bin # rbenv plugins
export PATH=$HOME/.rbenv/shims:$PATH # Gem binaries

# git achievements
export PATH=$PATH:$HOME/.misc/git-achievements

# Go
export PATH=$PATH:$GOROOT/bin # Go runtime binaries
export PATH=$PATH:$GOPATH/bin # Go package binaries

# Python
# WTF
export PKG_CONFIG_PATH=/usr/local/opt/python3/Frameworks/Python.framework/Versions/3.4/lib/pkgconfig
