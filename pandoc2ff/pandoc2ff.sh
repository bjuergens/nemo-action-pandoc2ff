#! /bin/bash
set -e
TARGET=$1
BASEDIR=$(dirname ${BASH_SOURCE[0]})"/"
OUTFILE=$(mktemp -d -t)"/o.html"
CSSFILE=$BASEDIR"pandoc.css"
PANDOCCMD="pandoc -s --mathjax --self-contained --latex-engine=xelatex -f markdown_github -o $OUTFILE --css $CSSFILE"

if [ -d "$TARGET" ]; then
  cd  $TARGET
  cat *.md| $PANDOCCMD
else
  $PANDOCCMD $TARGET
fi
firefox $OUTFILE
rm $OUTFILE
