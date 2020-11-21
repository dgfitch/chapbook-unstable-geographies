# Unstable Geographies

The 2020 COVID-19 era stories from Speculative Technologies, in chapbook form.

Provided here in case anyone is curious about the LaTeX markup used, or if you would like an example of how to typeset and print/fold/bind a chapbook yourself.

## Required packages

* fontenc, fontaxes, fontspec (font stuff for truetype fonts to work in lualatex)
* cabin, newpxtext (chosen fonts)
* lettrine (for dropcaps)
* pgfornament (fancy ornaments on pages)
* microtype (for small micro-adjustments in expansion and compression of letters)
* csquotes (so I can just "quote things" if I want)
* amssymb (for various math symbols


## Font installation

On Linux, just put the .ttf files in `~/.fonts`.


## Converting .docx to .tex

`generate-tex.sh` is my cheating method... I think I ended up going to 
markdown as an intermediary, but I think you can go straight from .docx
to .tex with [Pandoc](https://pandoc.org/) fairly reliably. Markdown as the step between 
eliminates any formatting oddities, though.

## Important files

All the book-wide settings are in `settings.tex`. Typeblock page margin stuff 
is in book.tex. And I use a two step process to get things laid out.

To build the internal content:

    lualatex book.tex
    lualatex book.tex
    pdflatex chapbook.tex

Twice to get the TOC pages right.

It was easier to lay out the pages and take a second step to assemble them.

To build the facing pages on the flyleaf (inside of the cover):

    lualatex inside.tex
    pdflatex chapbook-cover-inside.tex

To build a simulation of what it will look like all together, for 
electronic perusal or distribution:

    lualatex all.tex
