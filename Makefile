.PHONY: build clean live

build:
	latexmk -pdf -outdir=build main.tex

live:
	latexmk -pdf -pvc -outdir=build main.tex

clean:
	latexmk -C -outdir=build main.tex
