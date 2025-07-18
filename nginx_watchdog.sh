#!/bin/bash
# Restart nginx if not running

if ! systemctl is-active --quiet nginx; then
  echo "🔁 nginx is not running. Restarting..."
  sudo systemctl start nginx
else
  echo "✅ nginx is running."
fi
