CXXFLAGS = -g -O2 -Wall -Werror

.SUFFIXES: .tex .dvi .ps .bib .bbl .pdf .fig .eps .aux .jpg .png .svg \
		.gp .mf .2602gf .pl .xgr

all: THESIS.pdf

clean: rm -f THESIS.pdf

ALL_FIGURES = \
	pictureprotein.jpg \

THESIS.pdf: THESIS.tex dft-intro.tex protein-intro.tex abstract.tex \
	contact-corr.tex conclusion.tex introduction.tex acknowledgements.tex \
	${ALL_FIGURES}
	echo ${ALL_FIGURES}
	pdflatex THESIS.tex && bibtex THESIS && pdflatex THESIS.tex && pdflatex THESIS.tex
