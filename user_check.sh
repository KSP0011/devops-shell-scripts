#!/bin/bash
# Check if user exists

user=$1
if id "$user" &>/dev/null; then
  echo "✅ User $user exists."
else
  echo "❌ User $user does not exist."
fi
