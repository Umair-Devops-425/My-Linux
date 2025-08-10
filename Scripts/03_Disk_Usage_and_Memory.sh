#!/bin/bash
# System status report

echo "=== DISK USAGE ==="
df -h

echo "=== DIRECTORY SIZE (/var/log) ==="
du -sh /var/log

echo "=== MEMORY USAGE ==="
free -h
