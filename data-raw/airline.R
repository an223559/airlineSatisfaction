airline <- read.csv("data-raw/cleaned_airline_dataset.csv")
airline$arrival_delay <- as.numeric(airline$arrival_delay)
airline$satisfaction <- trimws(airline$satisfaction)
usethis::use_data(airline, overwrite = TRUE)
