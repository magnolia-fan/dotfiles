#
# MySQL CLI manager
#

# Requirements: mycli, KDE Wallet, jq

export MYCLI_HISTFILE=$HOME/.config/mycli/history

# XXX: Extend this function with custom definitions!
# Override the function (and completions) in dotfiles/secrets/myc.bash
function myc {
  case $1 in
    e | example )
      __myc_connect test example
      ;;
    * )
      echo "Usage: myc [serverid]"
      ;;
  esac
}

# NOTE: Completions are based on function definition
complete -W "$(type myc | grep "|" | sed "s/)//" | sed "s/^[ \t]*//" | sed "s/ | / /" | tr '\n' ' ')" myc

function __myc_connect {
  envname=$1
  dbname=$2

  __window_title "MySQL: $dbname @ $envname"
  __myc_banner $envname $dbname

  creds=$(__myc_creds "$envname-$dbname")
  [[ -z "$creds" ]] && echo "Missing credentials!" && return 1

  host=$(echo $creds | jq -r .host)
  user=$(echo $creds | jq -r .user)
  pass=$(echo $creds | jq -r .pass)
  defaultdb=$(echo $creds | jq -r .db)

  mycli -h $host -u $user -p $pass $defaultdb
}

function __myc_creds {
  wallet=kdewallet
  folder=MySQL
  entry=$1

  kwallet-query -f $folder -r $entry $wallet | grep -v "Failed to read entry"
}

function __myc_banner {
  envname=$1
  db=$2
  echo -n "Connecting to ${_BOLD}${db}${_RESET} @ ${_BOLD}"
  case $envname in
    testing )
      echo -n $_YELLOW
      ;;
    production )
      echo -n $_RED
      ;;
    localhost )
      echo -n $_BLUE
      ;;
  esac
  echo "${envname}${_RESET}"
}

