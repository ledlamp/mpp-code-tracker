#!/bin/bash
cd `dirname $0`
echo `date`
wget -Ni urls.txt
export GIT_SSH_COMMAND="ssh -i ~/.ssh/fofo"
git commit -am `git diff --name-only | tr '\n' ' '` --author="Script <lamp@ts.terrium.net>" && git push -u origin master
