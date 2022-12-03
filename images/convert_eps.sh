#!/bin/sh

# What is this?
# this script convert some images to eps

# Usage
# ./convert_eps.sh <dir>

if [ $# -ne 1 ]; then
  echo "Error: One argment is required."
  exit 1
fi

path="./${1}"

dir=`find $path -name "*.${1}"`
file_name=""
for file in $dir
do
  file_name=`basename $file ".${1}"`
  echo $file_name
  convert "$file" "./eps/${file_name}.eps"
done

