show-colors() {
  for code in {000..255}; do print -P -- "$code: %F{$code}Lorem ipsum dolor sit amet%f"; done
}
