#!/bin/bash
while IFS='' read -r line ; do
    curl -sSO $line &
done < "$1"
