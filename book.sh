#!/bin/bash
pdflatex book.tex
makebook -v -t quarto -i book.pdf
