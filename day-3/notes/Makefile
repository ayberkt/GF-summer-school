all: notes.pdf

notes.pdf: notes.md
	pandoc -s --to latex -o notes.tex notes.md
	pdflatex notes.tex
	pdflatex notes.tex

clean:
	rm notes.aux
	rm notes.log
	rm notes.out
	rm notes.pdf
	rm notes.tex

