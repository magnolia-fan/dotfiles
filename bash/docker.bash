function d-ssh {
    docker exec -it $1 /bin/bash
}

function d-ps {
    docker ps --format "table {{.ID}}\t{{.Names}}\t{{.Image}}\t{{.Status}}\t{{.CreatedAt}}" $@
}

function d-clean {
    local images=$(docker images -a | grep -e '^<none>' | awk '{print $3}' | cut -d: -f2)
    [[ -n $images ]] && docker rmi -f $images
}
