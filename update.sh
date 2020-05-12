#!/bin/bash
cd `dirname $0`
echo `date`
xargs -n 1 curl -sSO < urls.txt
export GIT_SSH_COMMAND="ssh -i ~/.ssh/fofo"
git commit -m `git diff --name-only | tr '\n' ' '` --author="Script <lamp@ts.terrium.net>" && git push -u origin master
