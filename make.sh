#!/usr/bin/env bash

lualatex book.tex
lualatex inside.tex
#lualatex chapbook-cover-inside.tex

# Now we need to chop the first page off of book.pdf

pdftk "book.pdf" cat 2-end output "book-final.pdf"
