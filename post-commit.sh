#!/bin/sh

echo "Type path to scottmeisburger.com repo, followed by [ENTER]:"

# Allows us to read user input below, assigns stdin to keyboard
exec < /dev/tty

read path

cp *.pdf $path/

cd $path && git stash && git add --all && git commit -m 'synced resume doc'
cd $path && git pull && git push && git stash apply
