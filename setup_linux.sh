#!/bin/bash

if [ ! -d "Linux" ]; then
    echo "Error directory \"Linux\" does not exist" 1>&2
    exit 1
fi

echo "Copying dotfiles to the correct locations"
cd Linux
for file in ./*; do
    #echo "cp $(basename $file) ~/.$(basename $file)"
    cp $(basename $file) ~/.$(basename $file)
done
echo "Done"
