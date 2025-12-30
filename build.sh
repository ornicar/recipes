#/bin/sh

host=recipes.local

cd docs

wget \
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
