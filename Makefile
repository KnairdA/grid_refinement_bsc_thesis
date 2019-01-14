.PHONY: build clean live

build:
	latexmk -shell-escape -pdf -outdir=build main.tex

live:
	latexmk -shell-escape -pdf -pvc -outdir=build main.tex

clean:
	latexmk -C -outdir=build main.tex
