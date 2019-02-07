sources := $(wildcard src/*.tex)
targets := $(patsubst src/%.tex,src/%.pdf,$(sources))

all: $(targets)
	echo ""

%.pdf: %.tex
	-pdflatex --shell-escape $^
	-pdflatex --shell-escape $^
	echo "Finished"
	open diagrams.pdf

.PHONY: clean

clean:
	rm -rf *.aux *.log *.pdf *.mp *.1 *.t1
