census_income <-read.csv("Census Income.csv")
View(census_income)

library(dplyr)
## 1. Data Preprocessing
## replace all missing values with NA
library(data.table)

nafill(as.numeric(census_income), type= c("const","locf","nocb"), fill=NA, nan=NA)
