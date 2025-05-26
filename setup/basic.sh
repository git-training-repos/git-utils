#!/usr/bin/env bash
# This script will do some basic git setup to get you set up and running with git
# This includes mandatory config such as user.name and user.email, as well as some basic aliases

echo "Ensuring your git username and email are set"
if [[ $(git config user.name | wc -l) == 0 ]]
then
    read -p "Your git name is not set, please enter your full name: " NAME
    if [[ "$NAME" != "" ]]
    then
        git config --global user.name "$NAME"
    else
        echo "Not setting your name..."
    fi
fi
if [[ $(git config user.email | wc -l) == 0 ]]
then
    read -p "Your git email address is not set, please enter you email: " EMAIL
    if [[ "$EMAIL" != "" ]]
    then
        git config --global user.email "$EMAIL"
    else
        echo "Not setting your email..."
    fi
fi


# Config - aliases
echo "Setting up basic aliases (s, l, ll, e.t.c)"
git config --global alias.s     "status"
git config --global alias.ss    "status -s"
git config --global alias.l     "log --graph --pretty=format:'%Cred%h%Creset %C(bold blue)<%<(18)%an>%Creset %s %Cgreen(%cr) %C(yellow)%d%Creset' -n15"
git config --global alias.ll    "log --graph --pretty=format:'%Cred%h%Creset %C(bold blue)<%<(18)%an>%Creset %s %Cgreen(%cr) %C(yellow)%d%Creset'"
git config --global alias.lns   "log --graph --pretty=format:'%Cred%h%Creset %C(bold blue)<%<(18)%an>%Creset %s %Cgreen(%cr) %C(yellow)%d%Creset' -n15 --name-status"
git config --global alias.sh    "show --color"
git config --global alias.shn   "show --color --name-only --pretty="
git config --global alias.shns  "show --color --name-status --pretty="
git config --global alias.d     "diff --color"
git config --global alias.dn    "diff --color --name-only"
git config --global alias.dns   "diff --color --name-status"
git config --global alias.t     "tag -l -n1"
git config --global alias.b     "branch -vv --color"
git config --global alias.ba    "branch -vv --color -a"
git config --global alias.shw   "show -w --word-diff-regex=[^[:space:]] -B"
git config --global alias.dw    "diff -w --word-diff-regex=[^[:space:]] -B"


# Config - other
echo "Setting up other config (such as automatic colours)"
git config --global color.ui auto
