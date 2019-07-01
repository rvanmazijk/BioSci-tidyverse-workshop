library(tidyverse)
library(magrittr)

set.seed(1234)

unicorns <-
  expand.grid(
    site  = c("site1", "site2", "site3"),
    species = rep(c("speciesa", "speciesb", "speciesc"), 10)
  ) %>%
  as_tibble() %>%
  mutate(
    nflowers = map_dbl(species, ~ rpois(1, case_when(
      .x == "speciesa" ~ 10,
      .x == "speciesb" ~ 20,
      .x == "speciesc" ~ 30
    ))),
    nunicorns = nflowers * ceiling(jitter(2))
  ) %>%
  group_by(species) %>%
  mutate(replicate = 1:n()) %>%
  gather(variable, value, nflowers, nunicorns) %>%
  unite(species_variable, species, variable) %>%
  spread(species_variable, value) %>%
  arrange(replicate)

write_csv(unicorns, "data/unicorns.csv")

write_csv(untidydata::language_diversity, "data/language.csv")
write_csv(untidydata::pre_post, "data/prepost.csv")
