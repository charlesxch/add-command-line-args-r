"This script calculates the sum of two numbers.

Usage: sum.R <num1> <num2>
" -> doc


library(tidyverse)
library(docopt)

opt <- docopt(doc)

main <- function(num1, num2) {
  
  sum <- as.numeric(num1) + as.numeric(num2)
  paste0("The sum of ", num1, " and ", num2, " is ", sum) |> 
    print()
}

main(opt$num1, opt$num2)