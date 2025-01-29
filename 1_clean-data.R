#
# CLEAN DATA
#


library('tidyverse')


attach(faithful)

fs::dir_create("app/data")

faithful2 <- faithful %>% 
  as_tibble() %>% 
  mutate(waiting.minute = waiting / 60)


saveRDS(faithful2, "app/data/faithful2.rds")

