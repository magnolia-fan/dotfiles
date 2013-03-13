alias ll="ls -lah"
alias reload!=". ~/.zshrc"
alias please="sudo"

# Ruby & Rails
alias b="bundle exec"
alias mkbundle="bundle install --path .bundle"
alias ss="git up && bundle && bundle exec rake db:migrate"
alias rc="bundle exec rails c"
alias rs="bundle exec rails s"

# Git
alias gl="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
alias gc="git commit -m"
alias ga="git add -u && git add . && git st"
alias gs="git st"
alias gd="git diff"
alias gp="git push"

# OSX
alias hidedesktop="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"
alias showdesktop="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"

# Services start-ups and shut-downs

alias mysql-start="mysql.server start"
alias mysql-stop="mysql.server stop"
alias mysql-restart="mysql.server restart"

alias postgres-start="pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start"
alias postgres-stop="pg_ctl -D /usr/local/var/postgres stop -s -m fast"

alias redis-start="launchctl load -w ~/Library/LaunchAgents/homebrew.mxcl.redis.plist"
alias redis-stop="launchctl unload -w ~/Library/LaunchAgents/homebrew.mxcl.redis.plist"
alias redis-restart="redis-stop && redis-start"
