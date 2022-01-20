#!/usr/bin/env sh

source=$1
if [ -z "$source" ]; then
  echo "Source was not specified"
  exit 0;
fi

message=$2
if [ -z "$message" ]; then
  echo "Message was not specified"
  exit 0;
fi

origin=$(git config --get remote.origin.url)

exists=$(git ls-remote --heads ${origin} gh-pages)

if [ -z "$exists" ]; then
  mkdir -p GHPAGES_DIR
  cp -r .git GHPAGES_DIR
  cd GHPAGES_DIR
  git checkout --orphan gh-pages
else
  mkdir -p GHPAGES_DIR
  cp -r .git GHPAGES_DIR
  cd GHPAGES_DIR
  git config --add remote.origin.fetch +refs/heads/*:refs/remotes/origin/*
  git fetch origin
  git checkout gh-pages
fi

cd ../

cp -R ${source} GHPAGES_DIR

cd GHPAGES_DIR
git add .
git commit -m "$message"
git push origin gh-pages
cd ../
rm -rf GHPAGES_DIR
