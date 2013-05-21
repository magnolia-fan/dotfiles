autoload colors && colors

# Using git from Homebrew instead of default one
git=/usr/local/bin/git

git_branch() {
  echo $($git symbolic-ref HEAD 2>/dev/null | awk -F/ {'print $NF'})
}

git_dirty() {
  st=$($git status 2>/dev/null | tail -n 1)
  if [[ $st == "" ]]
  then
    echo ""
  else
    if [[ "$st" =~ ^nothing ]]
    then
      echo "%F{002}($(git_prompt_info))%f"
    else
      echo "%F{001}($(git_prompt_info))%f"
    fi
  fi
}

git_need_commit() {
  $git diff --stat 2>/dev/null | awk -F',' '/files? changed/ { lc += $2 + $3 } END {
    if (lc > 100) print "\n%F{005}Y U NO COMMIT!?%f"
  }'
}

git_prompt_info () {
  ref=$($git symbolic-ref HEAD 2>/dev/null) || return
  echo "${ref#refs/heads/}"
}

unpushed () {
  $git cherry -v @{upstream} 2>/dev/null
}

need_push () {
  if [[ $(unpushed) == "" ]]
  then
    echo ""
  else
    echo "%F{006}✖%f "
  fi
}

rb_prompt(){
  if $(which rbenv &> /dev/null)
  then
    echo "%F{004%}$(rbenv version | awk '{print $1}')%f"
  else
    echo ""
  fi
}

current_time(){
  echo 'date +"%d.%m.%Y %H:%M:%S"'
}

directory_name(){
  echo "%F{012%}%1/%\%f"
}

export PROMPT=$'\n$(directory_name)$(git_need_commit) › '
set_prompt () {
  export RPROMPT="$(need_push)$(git_dirty)"
}

precmd() {
  # No longer setting title. Because tmux
  # title "zsh" "%m" "%55<...<%~"
  set_prompt
}
