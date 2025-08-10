#!/bin/bash
# A small file workflow

mkdir test_dir
cd test_dir

echo "Hello World" > hello.txt   # create a file
cp hello.txt hello_copy.txt      # copy file
mv hello_copy.txt moved.txt      # move/rename file
ls

rm moved.txt                     # remove file
cd ..
rmdir test_dir
