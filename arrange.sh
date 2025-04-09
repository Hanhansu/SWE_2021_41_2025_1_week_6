#!/bin/bash

file="./files"

for f in $file/*
do
    name=$(basename "$f")
    first=${name:0:1}
    small=$(echo "$first" | tr A-Z a-z)

    dir="./$small"

    if [ -d "$dir" ] && [ -f "$f" ]; then
        mv "$f" "$dir/"
    fi
done
