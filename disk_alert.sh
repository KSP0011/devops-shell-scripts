#!/bin/bash
# Alert if disk usage on root exceeds 80%

threshold=80
partition="/"
current_usage=$(df -h "$partition" | awk 'NR==2 {gsub(/%/, "", $5); print $5}')

echo "📊 Checking disk usage on '$partition': $current_usage% used"

if [ "$current_usage" -ge "$threshold" ]; then
  echo "⚠️ ALERT: Disk usage on $partition is above ${threshold}%! ($current_usage%)"
else
  echo "✅ Disk usage is within safe limits."
fi
