# Repeat what we learnt on day 1, to tidy the unicorns dataset
library(tidyverse)
unicorns <- read_csv("unicorns.csv")
unicorns <- unicorns %>%
  gather(key = species_variable, value = n_individuals, -site, -replicate) %>%
  separate(col = species_variable, into = c("species", "variable")) %>%
  spread(key = variable, value = n_individuals) %>%
  select(-replicate)  # Remove the "replicate" column

# If we are interested in the no. of unicorns per flower for each observation,
# we simply define a new column with mutate() to do just that!
unicorns %>%
  mutate(unicorns_per_flower = nunicorns / nflowers)

# But what about summarising these measurements within sites? Or within species?
# We have 3 sites:
unique(unicorns$site)
# And 3 species:
unique(unicorns$species)

mean(unicorns$nflowers)

# We use summarise() to get the mean no. flowers and unicorns like so:
unicorns %>%
  summarise(mean_nflowers = mean(nflowers),
            mean_nunicorns = mean(nunicorns))
# Result:
## # A tibble: 1 x 2
##   mean_nflowers mean_nunicorns
##           <dbl>          <dbl>
## 1          20.3           60.9
# These are means across the whole dataset. Equivalent to:
mean(unicorns$nflowers)
# And
mean(unicorns$nunicorns)

# We use group_by() to summarise within groups:
unicorns %>%
  group_by(species) %>%
  summarise(mean_nflowers = mean(nflowers),
            mean_nunicorns = mean(nunicorns))
## # A tibble: 3 x 3
##   species  mean_nflowers mean_nunicorns
##     <chr>            <dbl>          <dbl>
## 1 speciesa          11             33  
## 2 speciesb          19.8           59.3
## 3 speciesc          30.2           90.5
unicorns %>%
  group_by(species, site) %>%
  summarise(mean_nflowers = mean(nflowers),
            mean_nunicorns = mean(nunicorns))
## # A tibble: 9 x 4
## # Groups:   species [3]
##   species  site  mean_nflowers mean_nunicorns
##     <chr>    <chr>         <dbl>          <dbl>
## 1 speciesa site1           9.9           29.7
## 2 speciesa site2          10.9           32.7
## 3 speciesa site3          12.2           36.6
## 4 speciesb site1          20.9           62.7
## 5 speciesb site2          19.8           59.4
## 6 speciesb site3          18.6           55.8
## 7 speciesc site1          31.9           95.7
## 8 speciesc site2          30.9           92.7
## 9 speciesc site3          27.7           83.1

# Repeat what we learnt on day 1, to tidy the language dataset
language <- read_csv("language.csv")
language <- language %>%
  spread(key = Measurement, value = Value)

# We can also use summarise() on all columns that satisfy a predicate
# (Remember how we could do this with mutate_if()?)
language %>%
  group_by(Continent) %>%
  summarise_if(is.numeric, list(mean = mean, sd = sd))

# Here, I demonstrate tidying up the prepost dataset,
# and the making a new column of the differences between pre-
# and post-treatment measurements
prepost <- read_csv("prepost.csv")
prepost %>%
  separate(spec, into = c("g", "level")) %>%
  mutate(diff = test2 - test1) 

# Note, mutate()'s behaviour can be affected by groupings made by group_by()
# Compare the results of grouping before...
prepost %>%
  group_by(spec) %>%
  mutate(test1_scaled = scale(test1)) %>%
  summarise(mean = mean(test1_scaled))
# ... and after we use mutate()
prepost %>%
  mutate(test1_scaled = scale(test1)) %>%
  group_by(spec) %>%
  summarise(mean = mean(test1_scaled))
