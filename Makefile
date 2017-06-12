.PHONEY: present

DockerWorkshop.html: DockerWorkshop.Rmd *.png
	Rscript -e "rmarkdown::render('$<')"

present: DockerWorkshop.html
	chromium-browser $< &
