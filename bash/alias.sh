# General
alias ll="ls -lAFh --color"
alias dedup="awk '!visited[$0]++'"

# Git
alias ga="git add -u; git add .; git status -sb"
alias gb="git branch -v"
alias gc="git ci --allow-empty -m"
alias gd="git diff"
alias gdc="git diff --cached"
alias gl="git log --graph --abbrev-commit --decorate --date=relative --format=format:'%C(bold blue)%h%C(reset) %C(bold
green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all"
alias gp="git push"
alias gs="git status -sb"
alias gu="git up"
alias gcl="git co -"
alias gml="git merge - --no-edit"

# Ruby
alias bd="bundle install --jobs=8"
alias bdc="bundle config set path 'vendor/bundle'"
alias b="bundle exec"
alias br="bundle exec rails"

# Go
alias goi="go install ./..."
alias gg='rg -g "*.go"'

alias ytdl="youtube-dl -f 'bestvideo+bestaudio'"
alias cr="cargo run --quiet --"

