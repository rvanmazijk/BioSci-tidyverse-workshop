all: index.pdf

index.pdf: index.Rmd _output.yml style.sty
	Rscript -e "\
	library(rmarkdown);\
	render('$<', 'beamer_presentation')"
