#!/bin/bash
# Monitor and restart service if not active

service=$1
if ! systemctl is-active --quiet "$service"; then
  echo "🔁 $service is not running. Restarting..."
  sudo systemctl start "$service"
else
  echo "✅ $service is running."
fi
