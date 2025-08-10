#!/bin/bash
# Check if a process is running

PROCESS="ssh"

if ps aux | grep -q "[${PROCESS:0:1}]${PROCESS:1}"; then
    echo "$PROCESS is running"
else
    echo "$PROCESS is NOT running"
fi
