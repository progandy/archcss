#!/bin/sh
cd "$(dirname "$0")"
echo "sass in $PWD"
w="--update"
[ x"$1" = x"watch" ] && w="--watch" && shift

exec sass "$@" --cache-location ./scss/.sass-cache $w scss:css
