#!/bin/bash
# Watch for changes in a directory

dir=$1
inotifywait -m -e modify,create,delete "$dir"
