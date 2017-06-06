DockerWorkshop
========================================================
author: David Mawdsley, Robert Haines and Caroline Jay 
date: 28 June 2017
autosize: true

The problem
========================================================

- The scholarly publication process is slow and lumpy
- But scientific knowlege is incremental
	- And there are always more questions than there's time to answer
- Can reproducible research help?

Outline
========================================================

- Background to reproducible research
- Where Docker fits into this
- 

Reproducible Research
========================================================

- Knuth; literate programming
- R "ecosystem"
	- Reproducibility works well here

Reproducible Research in R
========================================================

- `knitr` allows us to interleave markdown or LaTex with R code
	- R session persists throughout document
		- Code chunks can be cached
	- Supports other languages through engines - but no persistance between chunks

Reproducible != Reusable
========================================================

- Reproducibility is a good thing
	- It makes you do things *properly*
	- It lets others check your work
- It doesn't (always) make it easy to _reuse_ or _extend_ your work 


Docker Pipelines for Reproducible, Reusable Research
========================================================

- By breaking our analysis pipeline into sections we obtain a
_more flexible_ workflow, which makes incremental improvement / extension of the work easier
- Docker facilitates this
- Use a Makefile to handle dependencies between "elements" (_better word needed??_)
	- Makes the manuscript just another "element"



Challenges
========================================================

- Slow analyses
- Tying Docker and R together

