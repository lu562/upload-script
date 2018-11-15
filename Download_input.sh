#!/bin/bash
pids=""
RESULT=0
while IFS='' read -r line ; do
    curl -sSO $line &
    pids="$pids $!"
done < "$1"

for pid in $pids; do
    wait $pid || let "RESULT=1"
done

if [ "$RESULT" == "1" ];
    then
       exit 1
fi
