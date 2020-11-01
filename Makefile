
INDIR=docx
DOCXS=$(wildcard *.docx)
MDS=$(patsubst %.docx,$(INDIR)/%.md, $(DOCXS))


all : $(MDS)

%.md : %.docx
    pandoc --smart -t latex -s $< -o $@

# %.md: %.docx
#     pandoc -s --smart -t latex -o $@ $<

# %.pdf: %.md
#     pandoc -s --smart -f markdown -o $@ $<

# %.tex: %.txt
#     pandoc -s --smart --bibliography references.bib -o $@ $<

