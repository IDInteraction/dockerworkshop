.PHONEY: present

DockerWorkshop.html: DockerWorkshop.Rmd
	Rscript -e "rmarkdown::render('$<')"

present: DockerWorkshop.html
	chromium-browser $<
