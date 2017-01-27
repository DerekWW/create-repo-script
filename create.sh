#!/bin/bash

dirname=$1

if [[ "$dirname" == "" ]]; then
  echo "!! script requires an argument" && exit 1
fi

mkdir $dirname
cd $dirname

git init
cp /Users/wes/galvanize/scripts/create-assessment-repo/circle.yml .
cp /Users/wes/galvanize/scripts/create-assessment-repo/.gitignore .
cp /Users/wes/galvanize/scripts/create-assessment-repo/package.json .
cp -r /Users/wes/galvanize/scripts/create-assessment-repo/src .
cp -r /Users/wes/galvanize/scripts/create-assessment-repo/test .
sed -i "" "s/REPOSITORY_NAME/$dirname/" package.json
echo "# $dirname" >> readme.md
git add .
git commit -m "Initial commit."
