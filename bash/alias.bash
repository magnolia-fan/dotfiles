# General

alias ll="ls -lAFh"
alias subl="/Applications/Sublime\ Text\ 3.app/Contents/SharedSupport/bin/subl"

# Git
alias git="git-achievements"
alias ga="git add -u; git add .; git status -sb"
alias gb="git branch -v"
alias gc="git ci -S --allow-empty -m"
alias gd="git diff"
alias gdc="git diff --cached"
alias gl="git log --graph --abbrev-commit --decorate --date=relative --format=format:'%C(bold blue)%h%C(reset) %C(bold
green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all"
alias gp="git push"
alias gs="git status -sb"
alias gu="git up"
alias gcl="git co -"
alias gml="git merge -"

# Ruby
alias bd="bundle install --jobs=8 --path vendor/bundle"

# Go
alias goi="go install ./..."

# OSX
alias hide-desktop="defaults write com.apple.finder CreateDesktop -bool false; killall Finder"
alias show-desktop="defaults write com.apple.finder CreateDesktop -bool true; killall Finder"
alias prefs="/Applications/System\ Preferences.app/Contents/MacOS/System\ Preferences"
alias admin-prefs="sudo /Applications/System\ Preferences.app/Contents/MacOS/System\ Preferences"
