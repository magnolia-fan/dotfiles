dock-delay() {
  defaults write com.apple.Dock autohide-delay -float $1 && killall Dock
}
