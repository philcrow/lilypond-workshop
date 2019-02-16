#!/bin/bash

# look for your output in the directory where this script lives as
#   book.pdf

lilypond-book --output=build --pdf book.lytex

# make sure there is a build directory
if [ ! -d "build" ]; then
    mkdir build
fi
cd build

pdflatex book

cp book.pdf ..
