#!/bin/bash
# Check if port is open on host

host=$1
port=$2

if nc -z "$host" "$port"; then
  echo "✅ Port $port on $host is open."
else
  echo "❌ Port $port on $host is closed."
fi
