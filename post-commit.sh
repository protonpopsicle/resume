#!/bin/sh

echo "What's the full path to your site's repo Scott?:"

# Allows us to read user input below, assigns stdin to keyboard
exec < /dev/tty

read path

cd cp -v *.pdf $path/

cd $path && git add --all && git commit -m 'updated resume pdf'
cd $path && git pull && git push

echo '...Yay!'
