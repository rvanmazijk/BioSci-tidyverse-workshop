library(tidyverse)
unicorns <- read_csv("unicorns.csv")
unicorns <- unicorns %>%
  gather(key = species_variable, value = n_individuals, -site, -replicate) %>%
  separate(col = species_variable, into = c("species", "variable")) %>%
  spread(key = variable, value = n_individuals)

unicorns <- unicorns %>%
  select(-replicate)

unicorns %>%
  pull(species) %>%
  unique()

unicorns %>%
  select(species) %>%
  unique()

unique(unicorns$species)

unicorns %>%
  filter(species == "speciesa" | species == "speciesb")

unicorns %>%
  filter(species != "speciesc")

unicorns %>%
  filter(species %in% c("speciesa", "speciesb"))

language <- read_csv("language.csv")
language <- language %>%
  spread(key = Measurement, value = Value)

language %>%
  select(-Continent, -Country)

language %>%
  select(Area, Langs, MGS, Population, Stations, Std)

language %>%
  select_if(is.numeric)

#data %>%
#  filter(vegtype == "fynbos")
#data %>%
#  filter(vegtype == "fynbos" | vegtype == "strandveld")
#data %>%
#  filter(vegtype %in% c("fynbos", "strandveld"))
#data %>%
#  filter(vegtype != "fynbos")
#data %>%
#  filter(!(vegtype %in% c("fynbos", "strandveld")))
#data %>%
#  filter(vegtype != "fynbos", plant_height <= 10)
#data %>%
#  filter(vegtype != "fynbos") %>%
#  filter(plant_height <= 10)
