GIT="/sbin/git"

function __bash_prompt {
    local baseDir=$(__bash_basedir)
    __window_title $baseDir

    # Define building blocks
    local userhost="$_BOLD$_BLUE\u@\h$_RESET_COLOR$_RESET"
    local basedir="$_BOLD$_GREEN\W$_RESET_COLOR$_RESET"
    local git_y_u_no_commit="$_MAGENTA$(__bash_git_y_u_no_commit_warn)$_RESET_COLOR"
    local git_branch="$(__bash_prompt_git)"
    local cursor="\[${_DIM}\]›\[$_RESET\]"

    PS1="\n$userhost $basedir$git_branch$git_y_u_no_commit\n$cursor\[$_RESET\] "
}
PROMPT_COMMAND=__bash_prompt # <--- ta-da!

function __bash_prompt_escape {
    echo -ne "\[$1\]"
}

#
# Git prompt
#

function __bash_prompt_git {
    __bash_is_git_dir && {
        __bash_git_is_clean && \
            local branch="$_GREEN$(__bash_git_branch)$_RESET_COLOR" || \
            local branch="$_RED$(__bash_git_branch)$_RESET_COLOR"
        __bash_git_is_pushed || \
            branch="$_UNDERLINED$branch$_RESET_UNDERLINED"

        echo -ne " ${_DIM}git:$_RESET_DIM$branch"
    }
}

function __bash_git_y_u_no_commit_warn {
    __bash_is_git_dir && {
        $GIT diff --stat 2>/dev/null | awk -F',' '/files? changed/ { lc += $2 + $3 } END {
            if (lc > 100) printf " -- Y U NO COMMIT!? --"
        }'
    }
}

function __bash_git_branch {
    __bash_is_git_dir && {
        __bash_is_git_new_repo && {
            echo -ne "[NEW REPO]"
        } || {
            $GIT rev-parse --symbolic-full-name --abbrev-ref HEAD
        }
    }
}

function __bash_git_is_clean {
    __bash_is_git_dir && {
        __bash_is_empty $($GIT status --porcelain)
    }
}

function __bash_git_is_pushed {
    __bash_is_git_dir && __bash_is_empty $($GIT cherry -v "@{upstream}" 2>/dev/null)
}

function __bash_is_git_dir {
    if [ -d ".git" ]; then return 0; else return 1; fi
}

# Returns 1 if there are no existing commits in the repo
function __bash_is_git_new_repo {
    __bash_is_empty $($GIT rev-list --all --parents --max-count=1)
}
