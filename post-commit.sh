#!/bin/sh

echo "What's the full path to your site's repo Scott?:"

# Allows us to read user input below, assigns stdin to keyboard
exec < /dev/tty

read path

cp *.pdf $path/

cd $path
git stash
git add --all
git commit -m 'updated resume pdf'
git pull
git push
git stash apply
