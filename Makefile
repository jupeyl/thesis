# LaTeX Makefile

FILE=main

all: $(FILE).pdf

clean:
	-rm *.aux *.blg *.out *.bbl *.log *.toc *.lot *.lof *.pdf  2>/dev/null

$(FILE).pdf: $(FILE).tex
	pdflatex $(FILE)
	pdflatex $(FILE)
	bibtex $(FILE)
	pdflatex $(FILE)
	pdflatex $(FILE)

