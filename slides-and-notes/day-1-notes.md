# Day 1 notes

Ruan van Mazijk

**Note, this notes-page is still being written!**

## Introducing Ruan

- BSc + Hons here at UCT

- Ecology & evolution
- (Mostly plant) comparative biology
- Biogeography

- Been working with R for 4.5 years
- Every major project I’ve done...

- My MSc is on the relationships between genome-size and plant phenotypes and ecology in CFR _Schoenus_ and _Tetraria_ species (Cyperaceae, tribe Schoeneae)

## Workshop goals

- More reproducible science
- Save time by:
  - Automating repetitive tasks
  - Eliminating human error
- Boost your skills
- Think about your data programmatically

## Workshop outline

| Day | Topic                                                        |
|:---:|:-------------------------------------------------------------|
| 1   | Tidy data principles & `tidyr`                               |
| 2   | Manipulating your data & an intro to `dplyr`                 |
| 3   | Extending your data with `mutate()`, `summarise()` & friends |

But before that, we need to discuss something technical...

## The 2 dialects of R

1. `base`
  - `$`, `[]`, `[[]]`, `apply()`, `which()`, `subset()`
2. `tidyverse`
  - What we are going to learn in this workshop

The `base` way of doing things can sometimes lead to messy R-scripts:

```r
data <- read.csv("my-data.csv")

data1 <- f(data, arg1 = "something")
data2 <- g(data1, another.thing = "blah")
data3 <- h(data2, a.setting = TRUE)
data4 <- data3[data3$a.column == "cough", ]
```

Look at all those intermediate objects we don't care about :cold_sweat:

Or, worse, if we try to remove the intermediate objects, we get **hard to read** code:

```r
data <- read.csv("my-data.csv")

data <-
  h(
    g(
      f(
        data,
        arg1 = "something"
      ),
      another.thing = "blah"
    ),
    a.setting = TRUE
  )

data <- data[data$a.column == "cough", ]
```

And we still can't get rid of that subsetting line easily!

The solution? A handy addition to normal R-syntax: the "pipe" `%>%` (also pronounced "then").

With the pipe, we feed the result of one line of R-code into the next (i.e. we send the result of one expression to the next):

```
f(x)
x %>% f() # same thing
```
This allows us to compose functions really easily!

Instead of this mess:

```r
h(g(f(x)))
```

We can do this:

```r
x %>%
  f() %>%
  g() %>%
  h()
```

Much easier to read! Instead of reading from the inside-out, we can read top-to-bottom :smiley:

## A motivating example

![An example data-collection scenario in biology]()

![One way to lay out your collected data...]()

![Another way...]()

![The "best" way. (Will make your life easiest in the long-term.)]()

<!--
TODO: cont.

## Embracing the rectangle

TOC:

- Long vs wide data
- The advantages of rectangular data

### Long vs wide data

Remember this?

![](images/motivating-example/motivating-example-1.png)

This is _wide-form_ data. Let's move away from that...

Using the `iris` dataset built into R!

### Wide-form data

```r
iris %>%
  split(.$Species) %>%
  map(select, -Species) %>%
  map(slice, 1:2)
```

### Classic long-form data

```r
iris %>%
  group_by(Species) %>%
  slice(1:3) %>%
  select(Species, Sepal.Length:Petal.Width) %>%
  as.data.frame()
```

### We can get longer...

```r
iris %>%
  group_by(Species) %>%
  slice(1) %>%
  gather(trait, trait_value, -Species) %>%
  ungroup() %>%
  slice(1:15) %>%
  as.data.frame()
```

### The advantages of long data

- Machine-readable
- The standard for most software/R-functions (e.g. `lm()`, `plot()`, `ggplot()`)
- How most statistical methods treat data mathematically
- Easier to subset & wrangle further!

## **Making** your data rectangular

### What are your options?

1. (Easiest to lay it out like that from the start...)
    - (Many tools (to follow) assume your data is nice & _tidy_)
2. _Careful_ Excel work
    - Risky...
3. Use R!
    - Many tools _also_ help in _tidying_ data
    - Namely, the package `tidyr`

### `tidyr::`

An R-package all about getting to _this_^[CC BY-NC-ND 3.0 Grolemund & Wickham 2017. _R for Data Science_]:

![]()

1. Each **variable** must have its own **column**.
2. Each **observation** must have its own **row**.
3. Each **value** must have its own **cell**.

#### Verbs to tidy your data

Untidy observations?

```r
gather()    # if > 1 observation per row
spread()    # if observations live in > 1 row
```

Untidy variables?

```r
separate()  # if > 1 variable per column
unite()     # if variables live in > 1 column 
```

#### Note the following when choosing `tidyr::` verbs

- Be clear on what your **observations** are
    - Like, what **unit** of your study counts as an observation
    - E.g. Leaf traits: plant leaf vs plant individual
    - E.g. Reproductive success: egg size vs clutch size
    - **This will depend on your study &/or data!**
- Variables are discrete, seperate ideas
-->
