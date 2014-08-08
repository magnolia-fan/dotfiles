function pg_oldies
  watch -n1 "psql -c \"\
    select substring(query from 0 for 120) q,\
    now() - query_start from pg_stat_activity\
    where state='active' order by query_start limit 20\""
end
