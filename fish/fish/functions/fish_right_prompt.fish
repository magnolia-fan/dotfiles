function fish_right_prompt --description 'Write out the right prompt'
  if test -d .git
    __fish_git_unpushed
    __fish_git_dirty
    printf " "
  end
end

function __fish_git_branch
  echo (/usr/local/bin/git symbolic-ref HEAD 2>/dev/null | rev | cut -d/ -f1 | rev)
end

function __fish_git_is_dirty
  echo (/usr/local/bin/git status --porcelain)
end

function __fish_git_dirty
  if [ (__fish_git_is_dirty) ]
    set_color red
  else
    set_color green
  end
  printf "%s" (__fish_git_branch)
  set_color normal
end

function __fish_git_is_unpushed
  echo (/usr/local/bin/git cherry -v "@{upstream}" 2>/dev/null)
end

function __fish_git_unpushed
  if [ (__fish_git_is_unpushed) ]
    set_color cyan
    printf "✖ "
    set_color normal
  end
end
