function iq
  curl -s -G "http://localhost:8086/db/$argv[1]/series?u=root&p=root" --data-urlencode $argv[2] | jq .
end
