#!/bin/bash
cd `dirname $0`
wget -N -nv -i urls.txt
export GIT_SSH_COMMAND="ssh -i ~/.ssh/fofo"
git commit -am `git diff --name-only | tr '\n' ' '` --author="Bash Script <lamp@ts.terrium.net>" && git push -u origin master