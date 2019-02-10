#!/bin/bash

lilypond-book --output=build --pdf book.lytex

# make sure there is a build directory
if [ ! -d "build" ]; then
    mkdir build
fi
cd build

pdflatex book
