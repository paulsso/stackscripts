#!/bin/sh

git init
git add .
git commit -m "initial commit"

gh repo create $1 --public --source=. --remote=upstream --push
