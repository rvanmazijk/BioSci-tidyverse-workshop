## Using `dplyr::` to work with data

1. Subsetting etc.
2. Extending your dataset

***

### `dplyr::`

#### Verbs to touch, slice-up, subset & look inside data

```r
select()  # !!!
filter()  # !!!
group_by()
summarise()
arrange()
join()
mutate()
```

#### 1. Subsetting etc.

```r
select()  # !!!
filter()  # !!!
```

```{r}
iris
```

##### `select()` vs `$`

```r
iris <- as.data.frame(iris)  # like this by default
iris
```

```r
iris[, 1]
iris[[1]]
iris[, "Sepal.Length"]
iris[["Sepal.Length"]]
iris$Sepal.Length
```

```r
iris["Sepal.Length"]
select(iris, Sepal.Length)
```

```r
iris <- as_tibble(iris)
iris
```

```r
iris[[1]]
iris[["Sepal.Length"]]
iris$Sepal.Length
```

```r
iris[, 1]
iris[, "Sepal.Length"]
iris["Sepal.Length"]
select(iris, Sepal.Length)
```
