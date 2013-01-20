autoload colors && colors
# cheers, @ehrenmurdick
# http://github.com/ehrenmurdick/config/blob/master/zsh/prompt.zsh

git_branch() {
  echo $(/usr/bin/git symbolic-ref HEAD 2>/dev/null | awk -F/ {'print $NF'})
}

git_dirty() {
  st=$(/usr/bin/git status 2>/dev/null | tail -n 1)
  if [[ $st == "" ]]
  then
    echo ""
  else
    if [[ $st == "nothing to commit (working directory clean)" ]]
    then
      echo " %F{002}($(git_prompt_info))%f"
    else
      echo " %F{001}($(git_prompt_info))%f"
    fi
  fi
}

git_prompt_info () {
 ref=$(/usr/bin/git symbolic-ref HEAD 2>/dev/null) || return
 echo "${ref#refs/heads/}"
}

unpushed () {
  if [[ -a .git ]]; then
    git diff origin/master..HEAD
  fi
}

need_push () {
  if [[ $(unpushed) == "" ]]
  then
    echo ""
  else
    echo " %F{005}↑↑%f"
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
  echo "%F{003%}%1/%\%f"
}

export PROMPT=$'\n$(directory_name)$(git_dirty)$(need_push) › '
set_prompt () {
  export RPROMPT="$(rb_prompt)"
}

precmd() {
  title "zsh" "%m" "%55<...<%~"
  set_prompt
}
