#!/bin/bash

echo "=== Installed Feature Versions ==="
echo "Gnu Make: $(make --version | head -1)"
echo "LaTeXmk: $(latexmk --version | head -1)"
echo "XeTeX: $(xelatex --version | head -1)"
echo "==================================="
