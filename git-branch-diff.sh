#!/bin/bash
if [ $# -ne 2 ]
  then
    echo "Increect arguments supplied, please enter in the format git-branch-diff.sh branch1 branch2"
fi
MainBranch=$1
SecondaryBranch=$2
git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr)%Creset' --abbrev-commit --date=relative $1..$2
