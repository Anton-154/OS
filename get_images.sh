#!/bin/bash

SERVER=$(echo "$1" | cut -d'/' -f1,2,3)

curl -s "$1" | tr '<' '\n' | grep '^img ' | sed -E 's#.*src="([^"]+)".*#\1#' | while read LINE
do
    if echo $LINE | grep '^https:' >/dev/null
    then
        IMG="$LINE"
    else
        IMG="${SERVER}${LINE}"
    fi

    curl -s -O "$URL"
done