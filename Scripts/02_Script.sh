#!/bin/bash

echo "My name is Umair" > intro.txt
echo "I am DevOps Engineer" >> intro.txt
echo "I also Love Football" >> intro.txt

echo "--- cat ---"
cat intro.txt

echo "--- head (first 2 lines) ---"
head -n 2 intro.txt

echo "--- tail (last 2 lines) ---"
tail -n 2 intro.txt

greap "m" intro.txt