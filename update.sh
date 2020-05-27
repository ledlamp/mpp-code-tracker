#!/bin/bash
cd `dirname $0`
echo `date`
xargs -n 1 curl -sSOL < urls.txt
git add .
export GIT_SSH_COMMAND="ssh -i ~/.ssh/fofo"
git commit -m "Changes detected" --author="Script <lamp@ts.terrium.net>" && git push -u origin master
