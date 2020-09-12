shopt -s histappend         # Append history instead of rewriting it
shopt -s cmdhist            # Use one command per line
HISTCONTROL=ignoreboth      # Don’t store specific lines (ignoredups + ignorespace)
HISTTIMEFORMAT='%F %T '     # Record timestamps
HISTFILESIZE=1000000        # Allow a larger history file
HISTSIZE=1000000            # Allow a longer history
PROMPT_COMMAND='history -a' # Store history immediately
# Don't add such calls to history
HISTIGNORE='ls:ll:bg:fg:history:ga:gd:gc:gl:gp'
