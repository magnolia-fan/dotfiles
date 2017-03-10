function __bash_basedir {
    local full=$(pwd)
    if [ $full == "/" ]
    then
        echo $full
    else
        echo $full | rev | cut -d/ -f1 | rev
    fi
}

function __bash_escape {
    echo -ne "\e[$1m"
}

function __bash_is_empty {
    if [ "$1" == "" ]; then return 0; else return 1; fi
}
