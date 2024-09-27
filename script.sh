#!/bin/bash

echo "# Git Basics" > README.md
echo "Dies ist ein Projekt, um die Grundlagen von Git zu lernen" >> README.md

git init
git add README.md
git add script.sh
git commit -m "first commit"

git remote add origin git@github.com:Benexdrake/git-basics.git

sleep 2

git push -u origin master

sleep 2

for i in {1..19}
do
	echo "Wiederholung $i" >> README.md
	git add README.md
	git commit -m "adding $i"
	git push
	sleep 1
done
