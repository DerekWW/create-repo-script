#!/bin/bash

dirname=$1

if [[ "$dirname" == "" ]]; then
  echo "!! script requires an argument" && exit 1
fi

mkdir $dirname
cd $dirname

git init
cp /Users/derekwierson/desktop/create-repo-script/circle.yml .
cp /Users/derekwierson/desktop/create-repo-script/.gitignore .
cp /Users/derekwierson/desktop/create-repo-script/package.json .
cp -r /Users/derekwierson/desktop/create-repo-script/src .
cp -r /Users/derekwierson/desktop/create-repo-script/test .
sed -i "" "s/REPOSITORY_NAME/$dirname/" package.json
echo "# $dirname" >> readme.md
git add .
git commit -m "Initial commit."
