#!/bin/bash
#checkout master and pull from origin on multiple repos

#Added repos here
declare -a gitRepos=()

for i in "${gitRepos[@]}"
do
    echo -------------checking out master for $i--------------
    git -C $i checkout master
    git -C $i pull origin master
    echo
    echo
    echo
    echo
done
