#/bin/sh

cd docs

wget \
  --recursive \
  --level 5 \
  --page-requisites \
  --adjust-extension \
  --convert-links \
  --domains chef.freeboxos.fr \
  --no-parent \
  http://chef.freeboxos.fr

mv chef.freeboxos.fr/* ./
rm -r chef.freeboxos.fr
