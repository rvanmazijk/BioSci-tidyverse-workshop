![](images/header.png)

A workshop by [Ruan van Mazijk](https://rvanmazijk.github.io/about/) on common data cleaning, wrangling and wrangling tasks in R, focussing on the [`tidyverse`](https://www.tidyverse.org/) package ecosystem, supported by the [UCT Biological Sciences Postgraduate Committee](https://uctbioscipg.wixsite.com/uctbioscipg) and [iCWild](http://www.icwild.uct.ac.za/).

<p>
  <img src="images/face.jpg"         height="100px" />
  <img src="images/logos/UCT.png"    height="100px" />
  <img src="images/logos/BIO.png"    height="100px" />
  <img src="images/logos/iCWild.jpg" height="100px" />
</p>

The material taught in this workshop is based on Ruan's own experience with the R-packages [`tidyr`](https://tidyr.tidyverse.org/) and [`dplyr`](https://dplyr.tidyverse.org/), and general tidy-data-science principles he learnt from from [R for Data Science](https://r4ds.had.co.nz/) (see [further reading](https://rvanmazijk.github.io/data-wrangling-workshop/#further-reading) below).

<p>
  <img src="images/logos/hex-tidyverse.png" height="100px" />
  <img src="images/logos/hex-tidyr.png"     height="100px" />
  <img src="images/logos/hex-dplyr.png"     height="100px" />
</p>

The materials I have prepared for this workshop are all open source (CC-BY-4.0 Ruan van Mazijk). See the license [here](LICENSE.txt).

## Workshop outline & materials

- Day 1: Tidy data principles & `tidyr`
  - [Slides](slides-and-notes/day-1-slides.pdf)
  - [Notes](slides-and-notes/day-1-notes)
  - [R-script](R/day-1-demo.R)
- Day 2: Manipulating you data & an intro to `dplyr`
  - [Slides](slides-and-notes/day-2-slides.pdf)
  - [Notes](slides-and-notes/day-2-notes)
  - [R-script](R/day-2-demo.R)
- Day 3: Extending your data with `mutate()`, `summarise()` & friends
  - [Slides](slides-and-notes/day-3-slides.pdf)

## Further reading

R for Data Science, by Garrett Grolemund & Hadley Wickham (available [online](https://r4ds.had.co.nz/), open source!)

[RStudio cheatsheets](https://www.rstudio.com/resources/cheatsheets/) (also available in RStudio directly via the menus `Help > Cheatsheets`) (many of these have been translated into languages other than English!)

Also, check out the `tidyverse` team's "official" curated list of learning resources [here](https://www.tidyverse.org/learn/).

## Details

- **Venue:** Sci Lab C (RW James Bldg, UCT)
- **Time:** 14h00-16h00, 1-3 July, 2019

Please bring your own laptops if you can. I find it easiest to learn new tools on my own computer. And there is a slim possibility that the lab computers might not allow you to install the packages we need. If you'd prefer to use the Sci Lab computers, the aforementioned risk is unlikely, so it should be fine!

## Package prep.

If you are bringing your own laptop, please install the packages we need beforehand. The more people have `tidyverse` ready and installed before we start the better. To install all of the packages we are going to use, and more, takes just one line in R:

```r
install.packages("tidyverse")
```

That should get you up and running on the latest version. Give it some time to run if need be. If it installed correctly, running this line:

```r
"tidyverse" %in% installed.packages()
```
should come back as `TRUE`.

## Disclaimer

This workshop is not affiliated with or supported by the `tidyverse` development team or RStudio and only aims to teach and foster the use of these tools.

![](images/footer.png)
