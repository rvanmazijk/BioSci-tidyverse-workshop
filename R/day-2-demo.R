# Repeat what we learnt yesterday:
library(tidyverse)
unicorns <- read_csv("unicorns.csv")
unicorns <- unicorns %>%
  gather(key = species_variable, value = n_individuals, -site, -replicate) %>%
  separate(col = species_variable, into = c("species", "variable")) %>%
  spread(key = variable, value = n_individuals)
unicorns

# Remove the replicate column:
unicorns <- unicorns %>%
  select(-replicate)
unicorns
# Or
## unicorns <- unicorns %>%
##   select(site, species, nflowers, nunicorns)
# Or
## unicorns <- unicorns %>%
##   select(site, species:nunicorns)

# Suppose we want to only compare species a & b
unicorns %>%
  filter(species == "speciesa", species == "speciesb")  # this doesn't work! why?

# These are both equally valid:
unicorns %>%
  filter(species == "speciesa" | species == "speciesb")
unicorns %>%
  filter(species %in% c("speciesa", "speciesb"))

# Though, there is yet another way:
unicorns %>%
  filter(species != "speciesc")

language <- read_csv("language.csv")

language <- language %>%
  spread(key = Measurement, value = Value)

language %>%
  select_if(is.numeric)
