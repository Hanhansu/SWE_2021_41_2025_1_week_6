#!/bin/bash

file="./files"

for f in $file/*
do
    filename=$(basename "$f")
    first_char=$(echo "$filename" | cut -c1)
    lower_char=$(echo "$first_char" | tr '[:upper:]' '[:lower:]')

    target_dir="./$lower_char"

    if [[ -d "$target_dir" && -f "$f" ]]; then
        mv "$f" "$target_dir/"
        echo "Moved $filename → $target_dir/"
    fi
done
