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

## Workshop outline

**!! UNDER CONSTRUCTION !!**

| Day | Topic                                                        |
|:---:|:-------------------------------------------------------------|
| 1   | Tidy data principles & `tidyr`                               |
| 2   | Manipulating you data & an ntro to `dplyr`                   |
| 3   | Extending your data with `mutate()`, `summarise()` & friends |

## Further reading

R for Data Science, by Garrett Grolemund & Hadley Wickham (available [online](https://r4ds.had.co.nz/), open source!)

## Disclaimer

This workshop is not affiliated with or supported by the `tidyverse` development team or RStudio and only aims to teach and foster the use of these tools.

![](images/footer.png)
