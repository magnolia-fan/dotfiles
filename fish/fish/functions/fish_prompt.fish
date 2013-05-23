function fish_prompt --description 'Write out the prompt'
  set_color blue
  printf (__fish_basedir)
  if test -d .git
    set_color magenta
    __fish_git_need_commit
  end
  set_color normal
  printf ' › '
end

function __fish_basedir
  echo (pwd | rev | cut -d/ -f1 | rev)
end

function __fish_git_need_commit
  /usr/local/bin/git diff --stat 2>/dev/null | awk -F',' '/files? changed/ { lc += $2 + $3 } END {
    if (lc > 100) printf " -- Y U NO COMMIT!? --"
  }'
end
