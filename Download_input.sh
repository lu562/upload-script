#!/bin/bash
pids=""
RESULT=0
while IFS='' read -r line ; do
    curl -sSO $line &
    pids="$pids $!"
done < "$1"

for pid in $pids; do
    wait $pid 
done

