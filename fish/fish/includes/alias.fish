alias v "vim"
alias subl "/Applications/Sublime\ Text\ 3.app/Contents/SharedSupport/bin/subl"

alias reload! ". $HOME/.config/fish/config.fish"
alias b "bundle exec"

alias ll "ls -lAFh"
alias please "sudo"
alias down "rsync -chavzP --stats"

# GCC
alias gcc48 "gcc-4.8"

# Ruby & Rails
alias b "bundle exec"

# alias http "ruby -run -e httpd . -p5000"

alias rails "bundle exec rails"
alias rake "bundle exec rake"
alias sidekiq "bundle exec sidekiq"
alias rspec "bundle exec rspec"
alias cucumber "bundle exec cucumber"
alias cap "bundle exec cap"
alias mina "bundle exec mina"
alias foreman "bundle exec foreman"

alias bd "bundle install --path=vendor/gems --jobs=8 --verbose"
alias rc "rails c"
alias rs "rails s"
alias rs1 "rails s -p3001"
alias rs2 "rails s -p3002"

alias nano-console "ssh ins1.int.avs.io -t 'screen -r localhots'"

# Git
alias git "git-achievements"
alias gl "git log --graph --abbrev-commit --decorate --date=relative --format=format:'%C(bold blue)%h%C(reset) %C(bold
green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all"
alias gc "git ci -S --allow-empty -m"
alias ga "git add -u; git add .; git st"
alias gf "ga; gc 'Fixup me'; git rh"
alias gs "git st"
alias gd "git diff"
alias gdc "git diff --cached"
alias gp "git push"
alias gu "git up"

# OSX
alias hide-desktop "defaults write com.apple.finder CreateDesktop -bool false; killall Finder"
alias show-desktop "defaults write com.apple.finder CreateDesktop -bool true; killall Finder"
alias prefs "/Applications/System\ Preferences.app/Contents/MacOS/System\ Preferences"
alias admin-prefs "sudo /Applications/System\ Preferences.app/Contents/MacOS/System\ Preferences"

# Services start-ups and shut-downs
alias mysql-start="mysql.server start"
alias mysql-stop="mysql.server stop"
alias mysql-restart="mysql.server restart"

alias postgres-start="pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start"
alias postgres-stop="pg_ctl -D /usr/local/var/postgres stop -s -m fast"
alias postgres-restart="postgres-stop; postgres-start"

alias redis-start="launchctl load -w ~/Library/LaunchAgents/homebrew.mxcl.redis.plist"
alias redis-stop="launchctl unload -w ~/Library/LaunchAgents/homebrew.mxcl.redis.plist"
alias redis-restart="redis-stop; redis-start"

alias elastic-start "launchctl load ~/Library/LaunchAgents/homebrew.mxcl.elasticsearch.plist"
alias elastic-stop "launchctl unload ~/Library/LaunchAgents/homebrew.mxcl.elasticsearch.plist"
alias elastic-restart "elastic-stop; elastic-start"
