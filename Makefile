EXE ?= pdflatex
SHELL=/bin/bash


all: 
	biber ModularForms
	$(EXE) ModularForms.tex
	

nolib: 
	rm ModularForms.bcf
	$(EXE) ModularForms.tex

	
push:
	git add .
	git commit -m " +1 commit "
	git push