
all: paper.pdf

paper.pdf: Makefile paper.tex \
		refs.bib \
		introduction.tex \
		related_work.tex \
		language.tex \
		runtime.tex \
		results.tex \
		compiling.tex \
		abstract.tex
	pdflatex paper.tex
	pdflatex paper.tex
	bibtex paper
	pdflatex paper.tex
	pdflatex paper.tex

clean:
	rm -f *.toc *.log *.aux paper.pdf *.bbl *.blg *.out *.brf
