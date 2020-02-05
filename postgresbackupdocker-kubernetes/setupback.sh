#! /bin/bash

PGPASSWORD=password pg_basebackup -h $1 -p 5432 -U replication -D /var/lib/postgresql/data -Fp -Xs -P 

./usr/local/bin/docker-entrypoint.sh postgres

