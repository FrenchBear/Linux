#!/bin/sh
find . -type f -name "*.c" -print | while read file; do grep -l $1 "$file"; done
