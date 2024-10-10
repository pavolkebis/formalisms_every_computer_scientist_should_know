#!/usr/bin/env bash

# Delete the out directory if it exists
rm -rf out

# Loop through all class files and compile them
for file in class_*.tex; do
    OUTDIR=out/"$(basename "$file" .tex)"
    mkdir -p "$OUTDIR"
    cp "$file" contents.tex
    tectonic class_template.tex --outdir=$OUTDIR
    mv $OUTDIR/class_template.pdf $OUTDIR/$(basename "$file" .tex).pdf
done

# Clean up
rm contents.tex