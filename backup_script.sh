#!/bin/bash
# Backup source to destination

while getopts "s:d:" opt; do
  case $opt in
    s) src=$OPTARG ;;
    d) dest=$OPTARG ;;
  esac
done

if [ ! -d "$src" ] || [ -z "$dest" ]; then
  echo "Usage: $0 -s <source> -d <destination>"
  exit 1
fi

mkdir -p "$dest"
cp -r "$src"/* "$dest"
echo "📦 Backup completed from $src to $dest"
