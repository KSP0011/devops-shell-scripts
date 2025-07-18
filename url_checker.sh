#!/bin/bash
# Check if a URL is reachable, retry up to 5 times

url=$1
count=0

while [ $count -lt 5 ]; do
  if curl -s --head "$url" | grep "200 OK" > /dev/null; then
    echo "✅ $url is reachable."
    break
  else
    echo "❌ Attempt $((count+1)): $url not reachable."
    sleep 30
    count=$((count+1))
  fi
done
