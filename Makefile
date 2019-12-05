
TEX = xelatex

MAIN = cv
CREDENTIALS = credentials
VIEWER = evince

all: $(MAIN).pdf

clean::
	rm -fv *.aux *.log *.bbl *.blg *.toc *.out *.lot *.lof $(MAIN).pdf

clean_junk::
	rm -fv *.aux *.log *.bbl *.blg *.toc *.out *.lot *.lof *.glo *.nav *.snm *.ist *.vrb

view:  $(MAIN).pdf
	$(VIEWER) $(MAIN).pdf >> /dev/null 2>&1 &

$(MAIN).pdf: $(MAIN).tex $(CREDENTIALS).tex
	$(TEX) $(MAIN).tex
	$(TEX) $(MAIN).tex
