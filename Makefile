PDF_OUTPUT = README.pdf
MD_INPUT = README.md
PANDOC = pandoc
LATEX_OPTIONS = -V geometry:"top=2cm, bottom=2cm, left=1.5cm, right=1.5cm"

all: $(PDF_OUTPUT)

$(PDF_OUTPUT): $(MD_INPUT)
	$(PANDOC) $(LATEX_OPTIONS) -o $@ $<

clean:
	rm -f $(PDF_OUTPUT)