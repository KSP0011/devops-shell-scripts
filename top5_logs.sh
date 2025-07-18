#!/bin/bash
# List 5 largest files in /var/log

echo "Top 5 largest files in /var/log:"
find /var/log -type f -exec du -h {} + 2>/dev/null | sort -rh | head -n 5
