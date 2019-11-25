library(tidyverse)

raw_dir <- "./data/raw/"
processed_dir <- "./data/processed/"

# read in raw data

dat <- read_csv(paste0(raw_dir, "dat.csv"))

head(dat)

# do some processing

new_dat <- dat %>%
  rbind(c(1, "f", "e", 4, "h"))

head(new_dat)

# write out processed data

write_csv(new_dat, paste0(processed_dir, "summaryData.csv"))



