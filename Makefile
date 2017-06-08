DockerWorkshop.html: DockerWorkshop.Rmd
	Rscript -e "rmarkdown::render('$<')"
