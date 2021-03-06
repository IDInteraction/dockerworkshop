.PHONEY: present clean all

all: DockerWorkshop.html 

DockerWorkshop.html: DockerWorkshop.Rmd ExamplePaper.png ExamplePaperSource.png
	Rscript -e "rmarkdown::render('$<')"

present: DockerWorkshop.html
	chromium-browser $< &

clean:
	rm -f DockerWorkshop.html ExamplePaper.pdf ExamplePaper.png ExamplePaperSource.png

ExamplePaper.png: ExamplePaper.pdf
	convert -density 150 $< -quality 90 $@
	convert $@ -shave 200x200 $@

ExamplePaper.tex: ExamplePaper.Rnw
	R CMD Sweave --engine=knitr::knitr $(notdir $<) ; echo 0

ExamplePaper.pdf: ExamplePaper.tex
	pdflatex $<
	# Run twice for xref
	pdflatex $<

ExamplePaperSource.png: ExamplePaperSource.ps
	convert -density 150 $< -quality 90 $@

ExamplePaperSource.ps: ExamplePaper.Rnw
	a2ps -1 -f 14 --highlight-level=heavy -o $@ $<

