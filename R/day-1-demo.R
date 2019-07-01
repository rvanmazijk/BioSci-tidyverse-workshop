# Load all of the tidyverse packages in one go
library(tidyverse)
# Note the message displayed when running this
# Something like this:
## ── Attaching packages ──────────────────────────────────── tidyverse 1.2.1 ──
## ✔ ggplot2 3.1.1       ✔ purrr   0.3.2  
## ✔ tibble  2.1.1       ✔ dplyr   0.8.0.1
## ✔ tidyr   0.8.3       ✔ stringr 1.4.0  
## ✔ readr   1.3.1       ✔ forcats 0.4.0  
## ── Conflicts ─────────────────────────────────────── tidyverse_conflicts() ──
## ✖ dplyr::filter() masks stats::filter()
## ✖ dplyr::lag()    masks stats::lag()

# Read in the data **without** any of the minor issues with base::read.csv()
unicorns <- read_csv("unicorns.csv")
# Note the messages displayed when running this also
# Something like this:
## Parsed with column specification:
## cols(
##   site = col_character(),
##   replicate = col_double(),
##   speciesa_nflowers = col_double(),
##   speciesa_nunicorns = col_double(),
##   speciesb_nflowers = col_double(),
##   speciesb_nunicorns = col_double(),
##   speciesc_nflowers = col_double(),
##   speciesc_nunicorns = col_double()
## )

# Look at the data
unicorns
# Or
View(unicorns)  # capital "V"!

# Tidy the data
unicorns %>%
  gather(key = species_variable, value = n_individuals, -site, -replicate) %>%
  separate(col = species_variable, into = c("species", "variable")) %>%
  spread(key = variable, value = n_individuals)

# Tidy the language data
language <- read_csv("language.csv")
language <- language %>%
  spread(key = Measurement, value = Value)

# Other examples we chatted about:
## data <- data %>%
##   unite(date, day, month, year, sep = "/")
## data %>%
##   separate(date, into = c("day", "month", "year"))

