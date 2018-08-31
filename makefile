TEXFILES = $(wildcard *.tex)
PDFFILES = $(TEXFILES:.tex=.pdf)

all: pdf
# use for windows clients:
	gswin64c -dBATCH -dNOPAUSE -q -sDEVICE=pdfwrite -dPDFSETTINGS=/prepress -sOutputFile="out.pdf" $(PDFFILES)
# use for linux clients:
# gs -dBATCH -dNOPAUSE -q -sDEVICE=pdfwrite -dPDFSETTINGS=/prepress -sOutputFile="out.pdf" $(PDFFILES)
# use for MacOS clients:
# gsos2 -dBATCH -dNOPAUSE -q -sDEVICE=pdfwrite -dPDFSETTINGS=/prepress -sOutputFile="out.pdf" $(PDFFILES)

pdf: $(PDFFILES)

%.pdf: %.tex
	@latexmk -pdf  -pdflatex=pdflatex $<
	@latexmk -c
clean:
	@latexmk -c

.PHONY: pdf clean all
