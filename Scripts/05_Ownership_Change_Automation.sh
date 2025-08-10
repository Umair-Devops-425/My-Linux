#!/bin/bash
# Change ownership of a file or folder

FILE="/tmp/myfile.txt"
USER="username"
GROUP="username"

touch "$FILE"
sudo chown $USER:$GROUP "$FILE"

ls -l "$FILE"
