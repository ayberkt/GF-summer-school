all: notes.pdf

notes.pdf: notes.md
	pandoc -s --to latex -o notes.tex notes.md
	pdflatex notes.tex
	pdflatex notes.tex
