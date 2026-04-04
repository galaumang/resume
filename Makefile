# Makefile for resume (LaTeX) project

# Variables
MAIN_TEX_FILE = main.tex
OUTPUT_DIR = build
PDF_NAME = umang_$(shell date +%F).pdf
LATEX_COMPILER = xelatex

# Phony targets (targets that are not files)
.PHONY: all build clean final

# Default target
all: build

# Build the project
build:
	@mkdir -p $(OUTPUT_DIR)
	@latexmk -$(LATEX_COMPILER) -output-directory=$(OUTPUT_DIR) $(MAIN_TEX_FILE)

# Create final PDF in the archive directory
archive: build
	@cp -f $(OUTPUT_DIR)/main.pdf archive/$(PDF_NAME)
	@echo "Final PDF created: archive/$(PDF_NAME)"

# Clean the project
clean:
	@rm -rf $(OUTPUT_DIR)
	@latexmk -c
