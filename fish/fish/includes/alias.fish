alias v="vim"

alias reload! ". $HOME/.config/fish/config.fish"
alias b "bundle exec"

alias ll "ls -lAFh"
alias please "sudo"

# Ruby & Rails
alias b "bundle exec"

alias rails "bundle exec rails"
alias rake "bundle exec rake"
alias rspec "bundle exec rspec"
alias cap "bundle exec cap"
alias cucumber "bundle exec cucumber"

alias bd "bundle install --path vendor/gems"
alias ss "git up; bundle --quiet; bundle exec rake db:migrate"
alias rc "rails c"
alias rs "rails s"
alias rs1 "rails s -p3001"
alias rs2 "rails s -p3002"
alias fs "bundle exec foreman start"

# Git
alias git "git-achievements"
alias gl "git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
alias gc "git ci -m"
alias ga "git add -u; git add .; git st"
alias gs "git st"
alias gd "git diff"
alias gp "git push"
alias gu "git up"
alias gb "git br"

# OSX
alias hidedesktop "defaults write com.apple.finder CreateDesktop -bool false; killall Finder"
alias showdesktop "defaults write com.apple.finder CreateDesktop -bool true; killall Finder"

# Services start-ups and shut-downs
alias mysql-start="mysql.server start"
alias mysql-stop="mysql.server stop"
alias mysql-restart="mysql.server restart"

alias postgres-start="pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start"
alias postgres-stop="pg_ctl -D /usr/local/var/postgres stop -s -m fast"

alias redis-start="launchctl load -w ~/Library/LaunchAgents/homebrew.mxcl.redis.plist"
alias redis-stop="launchctl unload -w ~/Library/LaunchAgents/homebrew.mxcl.redis.plist"
alias redis-restart="redis-stop; redis-start"
