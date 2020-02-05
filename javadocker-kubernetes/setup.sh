#! /bin/bash

ls -la /docker-entrypoint/
 ls -la /docker-entrypoint/target/tpc-c-0.1-SNAPSHOT-tpc-c/tpc-c-0.1-SNAPSHOT/
 cd /docker-entrypoint/target/tpc-c-0.1-SNAPSHOT-tpc-c/tpc-c-0.1-SNAPSHOT/
 ./load.sh
 ./run.sh

