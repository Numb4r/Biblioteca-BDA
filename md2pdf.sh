#!/bin/sh

TARGET="`pwd`/Markdown"
OUTPUT="`pwd`/Main"
[ ! -d $OUTPUT ] && mkdir $OUTPUT
ls $TARGET | grep .md | cut -d . -f 1 | xargs -t -I {} pandoc -f markdown $TARGET/{}.md -t ms --pdf-engine-opt=-p -o $OUTPUT/{}.pdf