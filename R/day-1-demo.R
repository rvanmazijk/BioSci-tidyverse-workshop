# Load all of the tidyverse packages in one go
library(tidyverse)
# Note the messages displayed when running this

# Read in the data **without** any of the minor issues with base::read.csv()
unicorns <- read_csv("unicorns.csv")
# Note the messages displayed when running this also

# Look at the data
unicorns
# Or
View(unicorns)  # capital "V"!

# Ask the class: "Why is this not tidy?"

