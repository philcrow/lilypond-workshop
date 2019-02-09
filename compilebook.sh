#!/bin/sh

lilypond-book --output=build --pdf book.lytex
cd build
pdflatex book
