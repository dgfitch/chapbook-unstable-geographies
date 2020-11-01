#!/usr/bin/env bash
OIFS="$IFS"
IFS=$'\n'
for item in `find markdown -type f -name '*.markdown'`
do
  echo pandoc \'$item\' -f markdown -t latex -o \'${item//markdown/tex}\';
done

IFS="$OIFS"
