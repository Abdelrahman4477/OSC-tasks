#!/bin/bash


DIRECTORY=$1

for file in "$DIRECTORY"/*.txt; do
  if [ -e "$file" ]; then
    BASENAME=$(basename "$file")
    mv "$file" "$DIRECTORY/old_$BASENAME"
  fi
done
