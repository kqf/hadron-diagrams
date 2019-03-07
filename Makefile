sources := $(wildcard src/*.tex)
targets := $(patsubst src/%.tex,src/%.pdf,$(sources))

all: $(targets)

%.pdf: %.tex
	-pdflatex --shell-escape $^
	-pdflatex --shell-escape $^
	-@$(OPEN) factorization.pdf

.PHONY: clean

clean:
	rm -rf *.aux *.log *.pdf *.mp *.1 *.t1
