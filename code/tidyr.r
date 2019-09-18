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

reactionLong <- reaction %>% 
    gather(key=Stat, value=Data,
           Age, BMI, React, Regulate)
reactionLong

reactionLong %>% 
    spread(key=Stat, value=Data)

coefplot::invlogit(-6:6)

useful::MapToInterval(nums=-6:6, start=4, stop=7)

reaction %>% 
    unite(col=Indentifier, ID, Test, sep='_')

reaction %>% 
    unite(col=Indentifier, ID, Test, sep='_') %>% 
    separate(col=Indentifier, into=c('ID', 'TestNum'), sep="_")
