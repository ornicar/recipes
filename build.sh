#/bin/sh

host=recipes.local

pwd=$(pwd)

# cd to script dir
cd "$(dirname "$0")"

rm -rf docs/*
cd docs

wget \
  --continue \
  --recursive \
  --level 5 \
  --page-requisites \
  --adjust-extension \
  --convert-links \
  --domains recipes.local \
  --no-parent \
  http://$host

mv $host/* ./
rm -r $host

# cd back to prev dir
cd $pwd
