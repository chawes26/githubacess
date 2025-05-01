rm(list=ls())
library("experDesign")
my_data <- read.csv("Batchexcel4.csv")
head(my_data)
check_data(my_data)
set.seed(26)
index <- design(pheno = my_data, size_subset = 4, omit = NULL, iterations = 500)
index
my_array <- array(unlist(index), dim = c(4))
print(my_array)
my_lists <- list(index)
my_lists
flattened_vector <- unlist(my_lists)
flattened_vector
my_array <- array(flattened_vector, dim = c(4, 7))
print(my_array)
my_df <- as.data.frame(my_array)
write.csv(my_df, "my_array2.csv", row.names = FALSE)
