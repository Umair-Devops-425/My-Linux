#!/bin/bash
# Save top output to a file (non-interactive)

top -b -n 1 > top_snapshot.txt
echo "Saved current process snapshot to top_snapshot.txt"
