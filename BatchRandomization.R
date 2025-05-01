rm(list=ls())
library("experDesign")
my_data <- read.csv("Filename.csv")
head(my_data)
check_data(my_data)
set.seed(87732135)
index <- design(pheno = my_data, size_subset = 21, omit = NULL, iterations = 100)
index
my_array <- array(unlist(index), dim = c(21))
print(my_array)
my_lists <- list(index)
my_lists
flattened_vector <- unlist(my_lists)
flattened_vector
my_array <- array(flattened_vector, dim = c(21, 7))
print(my_array)
my_df <- as.data.frame(my_array)
write.csv(my_df, "my_array.csv", row.names = FALSE)
