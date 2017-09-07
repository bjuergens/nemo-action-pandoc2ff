#! /bin/bash
set -e
TARGET="$*"
BASEDIR=$(dirname ${BASH_SOURCE[0]})"/"
OUTFILE=$(mktemp -d -t)"/o.html"
CSSFILE=$BASEDIR"pandoc.css"
PANDOCCMD="pandoc --mathjax --smart --standalone --normalize --self-contained --write=html5 --latex-engine=xelatex -f markdown -o $OUTFILE --css $CSSFILE"

if [ -d "$TARGET" ]; then
  cd  "$TARGET"
  cat *.md| $PANDOCCMD
else
  cd "$(dirname "$(readlink -f "$TARGET")")"
  $PANDOCCMD $(basename "$TARGET")
fi
firefox $OUTFILE
sleep 10
rm $OUTFILE
