#!/bin/bash
#set -e

echo "check online d'abord"
git pull

#pour faire le backup complet
git add --all .

echo
echo "des commentaires ?"
echo

read input

# commit au local avec commentaires et timestamp
git commit -m "$input"

# push vers github
git push -u origin main

echo
echo "push git fini ;)"

