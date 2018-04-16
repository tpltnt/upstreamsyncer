#!/bin/sh

# a shell script to sync the "master" branch
# of a git repository with the "master" branch
# with the upstream repository.
set -e

# change directory if needed
if [ "$#" = 1 ] ; then
    cd $1
fi

# determine if upstream exists
SHOULD_SYNC=false
for remote in `git remote`; do
    if [ "$remote" = "upstream" ]; then
	SHOULD_SYNC=true
    fi
done

if [ "$SHOULD_SYNC" = false ]; then
    echo "no upstream to sync"
    exit 0  # nothing to do
fi

# store current branch
CURRENT_BRANCH=`git rev-parse --abbrev-ref HEAD`

# sync with upstream
git checkout master
git pull upstream master
git push origin master

# go back to current branch
git checkout $CURRENT_BRANCH
