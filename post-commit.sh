#!/bin/sh

path=../protonpopsicle.github.io/

cp -v *.pdf $path

cd $path && git add --all && git commit -m 'synced resume doc'
cd $path && git pull && git push

echo '...Yay!'
