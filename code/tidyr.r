library(tidyr)

# readr
# purrr
# tidyr
# dplyr

reaction <- readr::read_tsv('data/reaction.txt')
reaction

reaction %>% gather(key=Stat, value=Data,
                    Age, BMI, React, Regulate) %>% 
    dplyr::arrange(ID, Test) %>% 
    head(20)
