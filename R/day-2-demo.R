# Repeat what we learnt on day 1, to tidy the unicorns dataset
library(tidyverse)
unicorns <- read_csv("unicorns.csv")
unicorns <- unicorns %>%
  gather(key = species_variable, value = n_individuals, -site, -replicate) %>%
  separate(col = species_variable, into = c("species", "variable")) %>%
  spread(key = variable, value = n_individuals)

# Remove the "replicate" column
unicorns <- unicorns %>%
  select(-replicate)

# We can check how many species occur in our data in three ways:
# 1. The base R way (which is fine for this simple goal)
unique(unicorns$species)
# 2. The tidy way (returns a vector like no. 1)
unicorns %>%
  pull(species) %>%
  unique()
# 3. Another tidy way (returns a smaller tibble)
unicorns %>%
  select(species) %>%
  unique()

# Suppose we only want to compare species a and b
# So we try this:
unicorns %>%
  filter(species == "speciesa", species == "speciesb")
# This doesn't do what we want! Why?
# Because the conditions provided to filter() must **all** be satisfied.

# These all do what we want, in different ways:
unicorns %>%
  filter(species == "speciesa" | species == "speciesb")
unicorns %>%
  filter(species %in% c("speciesa", "speciesb"))
unicorns %>%
  filter(species != "speciesc")

# Repeat what we learnt on day 1, to tidy the language dataset
language <- read_csv("language.csv")
language <- language %>%
  spread(key = Measurement, value = Value)

# Let's try and trim this dataset down to only numeric variables.
# Here are various ways to do this:
language %>%
  select(-Continent, -Country)
language %>%
  select(Area, Langs, MGS, Population, Stations, Std)
language %>%
  select_if(is.numeric)

# Other examles we spoke about
##data %>%
##  filter(vegtype == "fynbos")
##data %>%
##  filter(vegtype == "fynbos" | vegtype == "strandveld")
##data %>%
##  filter(vegtype %in% c("fynbos", "strandveld"))
##data %>%
##  filter(vegtype != "fynbos")
##data %>%
##  filter(!(vegtype %in% c("fynbos", "strandveld")))
##data %>%
##  filter(vegtype != "fynbos", plant_height <= 10)
##data %>%
##  filter(vegtype != "fynbos") %>%
##  filter(plant_height <= 10)
