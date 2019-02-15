all: slides webpage

slides: index.pdf

webpage: index.html

index.pdf: index.Rmd _output.yaml
  Rscript -e '\
  library(rmarkdown);\
  render("$<", "beamer_presentation")'
  
index.html: index.Rmd _output.yaml
	Rscript -e '\
	library(rmarkdown);\
	render("$<", "html_document")'
