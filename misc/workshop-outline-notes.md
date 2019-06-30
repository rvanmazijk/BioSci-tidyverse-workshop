# My notes outlining the workshop

Ruan van Mazijk

## Day 1: Tidy data principles & `tidyr` 

### Motivation behind tidy rectangular data

### Motivation behind `%>%`

- Bad:
  - Multiple intermediate objects
  - Deeply-nested commands, having to be read "from the inside out"
- Good:
  - Linear, top-to-bottom reading
  - Only keep the intermediates you want!
  - How `%>%` is nice with `tidyverse`'s "verb-like" functions (_always_ takes data as 1^st^ argument!)

### The meat of today: `tidyr`

#### `separate()` & `unite()`

- How it works
- An example in the slides
- An example for them to try
  - Something like: `label "A1" -> site "A", transect "1"`

#### `gather()` & `spread()`

`tidyr`              | `gather()` | `spread()`
---------------------|------------|-----------
`reshape`/`reshape2` | `melt()`   | `cast()`
Excel/spreadsheets   | unpivot    | pivot
Databases            | fold       | unfold

Table: [!!!](https://tidyr.tidyverse.org/)

- How it works
- An example in the slides
- An example for them to try
  - Something like: `site_A, site_B, site_C -> site, plant_height`

## Day 2: Manipulating data I: Intro to `dplyr`

`select()`, `filter()`, `arrange()`, `join()`

`tidyverse` | `base`
------------|----------------------------------------
`select()`  | `$`, `[, "variable"]`, `[["variable"]]`
`filter()`  | `[`stuff`, ]`, `which()`, `subset()`
`arrange()` | `sort()`
`join()`    | a huge mess

...

## Day 3: Extending your data: `mutate()` & `summarise()`

`tidyverse`                        | `base`
-----------------------------------|---------------------------
`x %>% mutate(something = f(a, b)` | x$something <- f(x$a, x$b)

...

Something like:

```
site_A, site_B, site_C -> site, plant_height ->
  group by site ->
  summarise mean(plant_height)
```

```r
data %>%
  gather(site, plant_height, site_A, site_B, site_C) %>%
  group_by(site) %>%
  summarise(mean_plant_height = mean(plant_height)
```
