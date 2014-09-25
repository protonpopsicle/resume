#!/bin/sh

echo "Type full path to scottmeisburger.com repo:"

# Allows us to read user input below, assigns stdin to keyboard
exec < /dev/tty

read path

cp *.pdf $path/

cd $path
git stash
git add --all
git commit -m 'synced resume doc'
git pull
git push
git stash apply
