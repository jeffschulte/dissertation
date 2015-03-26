CXXFLAGS = -g -O2 -Wall -Werror

.SUFFIXES: .tex .dvi .ps .bib .bbl .pdf .fig .eps .aux .jpg .png .svg \
		.gp .mf .2602gf .pl .xgr

all: THESIS.pdf

clean: rm -f THESIS.pdf

ALL_FIGURES = \
	pictureprotein.jpg \

THESIS.pdf: THESIS.tex dft-intro.tex protein-intro.tex abstract.tex contact-corr.tex THESIS.bib appendix.tex \
	saft-water.tex pair-dist.tex conclusion.tex introduction.tex acknowledgements.tex figs/short-range-fit-parameters.tex \
	${ALL_FIGURES}
	echo ${ALL_FIGURES}
	pdflatex THESIS.tex && bibtex THESIS && pdflatex THESIS.tex && pdflatex THESIS.tex
