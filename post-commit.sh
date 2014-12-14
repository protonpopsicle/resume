#!/bin/sh

path=../protonpopsicle.github.io/

cd $path && git stash
cp -v *.pdf $path
cd $path && git add --all && git commit -m 'synced resume doc'
cd $path && git pull
cd $path && git push
cd $path && git stash apply

echo '...Yay!'
