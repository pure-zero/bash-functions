#!/bin/bash
function git-created-dates {
    for file in `git ls-files`
        do
            HASH=`git rev-list HEAD $file | tail -n 1`
            DATE=`git show -s --format="%ci" $HASH --`
            printf "%-35s %s\n  %s\n" $file $HASH: "$DATE"
        done
}
git-created-dates
