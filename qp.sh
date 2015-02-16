#!/bin/sh

set -x -e

mkdir -p "$1"
cd "$1"
git init
hub create
npm init -y
$EDITOR index.js
git add -A
git commit -am "init"
git tag v1.0.0
git push -u origin master
git push --tags
npm publ