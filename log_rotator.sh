#!/bin/bash
# Move .log files larger than 1MB to archive with timestamp

DIR="${1:-.}"
mkdir -p "$DIR/archive"

for f in "$DIR"/*.log; do
  [ -e "$f" ] || continue
  base=$(basename "$f" .log)
  ts=$(date +%Y%m%d_%H%M%S)
  new="${base}_$ts.log"
  if [ -n "$(find "$f" -type f -size +1M)" ]; then
    mv "$f" "$DIR/archive/$new"
    echo "Moved: $f --> $DIR/archive/$new"
  fi
done
