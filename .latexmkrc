# .latexmkrc
$pdf_mode = 5;    # Use xelatex
$xelatex = "xelatex -synctex=1 -interaction=nonstopmode";
$bibtex_use = 2;  # Use bibtex

# Files to clean up
$clean_ext = "aux bbl bcf blg idx ind lof lot out toc run.xml synctex.gz";