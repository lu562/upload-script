#!/bin/bash
while IFS='' read -r line || [[ -n "$line" ]]; do
    curl -sSO $line &
done < "$1"
