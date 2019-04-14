#!/bin/bash

mkdir Rahul
cd Rahul
git init

echo -e 'Rahul Bukte  180070013' >intro.txt
git add intro.txt
git commit -m "My intro"
git branch "interests"
git checkout "interests"

echo -e 'Interests : Table Tennis, Chess, Gaming.\n' >>intro.txt
git add intro.txt
git commit -m "added interest $(date +%H:%M:%S)"
git checkout master
git merge interests
git remote add origin https://github.com/RahulB23/git-task.git
git push -u origin master

