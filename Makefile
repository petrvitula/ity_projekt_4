# Makefile for LaTeX document compilation

# Define variables
TEX = pdflatex
BIB = bibtex
MAIN = proj4

# Default target: compile the LaTeX document
all: $(MAIN).pdf

# Compile LaTeX document
$(MAIN).pdf: $(MAIN).tex
        $(TEX) $(MAIN).tex
        $(BIB) $(MAIN)
        $(TEX) $(MAIN).tex
        $(TEX) $(MAIN).tex

# Clean up auxiliary files
clean:
        rm -f $(MAIN).aux $(MAIN).log $(MAIN).out $(MAIN).bbl $(MAIN).blg $(MAIN).toc

# Phony targets
.PHONY: all clean