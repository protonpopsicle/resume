#!/bin/sh

echo "Type path to scottmeisburger.com repo, followed by [ENTER]:"

read path

cp *.pdf $path/

cd $path && git stash && git add --all && git commit -m 'synced resume doc'
cd $path && git pull && git push && git stash apply
