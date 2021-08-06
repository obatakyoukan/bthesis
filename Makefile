OBJS = main

.PHONY: all
all:
	platex $(OBJS).tex
	pbibtex $(OBJS)
	dvipdfmx $(OBJS).dvi

.PHONY: open
open:
	open $(OBJS).pdf

.PHONY: total
total:
	platex $(OBJS).tex
	pbibtex $(OBJS)
	platex $(OBJS).tex
	platex $(OBJS).tex
	dvipdfmx $(OBJS).dvi
	open $(OBJS).pdf

.PHONY: clean
clean:
	rm *.dvi
	rm *.log
	rm *.aux
	rm *.toc
	rm *.bbl
	rm *.blg
