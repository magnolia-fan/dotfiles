function d-ssh {
    docker exec -it $1 /bin/bash
}
function _d-ssh {
    local cur=${COMP_WORDS[COMP_CWORD]}
    COMPREPLY=($(compgen -o nospace -W "$(docker ps -a --format '{{.Names}}')" -- $cur))
}
complete -F _d-ssh d-ssh

function d-ps {
    docker ps --format "table {{.ID}}\t{{.Names}}\t{{.Image}}\t{{.Status}}\t{{.CreatedAt}}" $@
}

function d-clean {
    local images=$(docker images -a | grep -e '^<none>' | awk '{print $3}' | cut -d: -f2)
    [[ -n $images ]] && docker rmi -f $images
}
