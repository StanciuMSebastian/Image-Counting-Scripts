#!/bin/bash

files=$(ls $1)
nr=1

if [ ! -d filesOut ]; then
  echo "Creating output file"
  mkdir filesOut
fi

for i in $files
do
  newname="Image"$nr".jpg"
  #echo $newname
  mv $1$i filesOut/$newname
  nr=$((nr+1))

done

exit
