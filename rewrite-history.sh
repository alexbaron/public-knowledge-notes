#!/bin/sh

echo 'Rewrite the email use in the previous commit'

OLD_EMAIL=$1
NEW_EMAIL=$2
YOUR_NAME=$3

echo 'old email = '$OLD_EMAIL
echo 'new email = '$NEW_EMAIL
echo 'your name = '$YOUR_NAME

git filter-branch --commit-filter '
    if [ "$GIT_COMMITTER_EMAIL" = "<$OLD_EMAIL>" ];
    then
        GIT_COMMITTER_NAME="<$YOUR_NAME>";
        GIT_AUTHOR_NAME="<$YOUR_NAME>";
        GIT_COMMITTER_EMAIL="<$NEW_EMAIL>";
        GIT_AUTHOR_EMAIL="<$NEW_EMAIL>";
        git commit-tree "$@";
    else
         git commit-tree "$@";
    fi' HEAD