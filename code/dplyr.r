library(dplyr)

# split-apply-combine

data(package='ggplot2')

data(diamonds, package='ggplot2')

diamonds

head(diamonds)
head(diamonds, n=9)
tail(diamonds)
tail(diamonds, n=3)

tail(head(diamonds, n=4), n=1)

head(diamonds)
diamonds %>% head()

head(diamonds, n=4)
diamonds %>% head(n=4)

tail(diamonds, n=1)
diamonds %>% tail(n=1)

# ctrl+shift+M

tail(head(diamonds, n=4), n=1)
diamonds %>% head(n=4) %>% tail(n=1)

diamonds

select(diamonds, carat, cut, price)
diamonds %>% select(carat, cut, price)
diamonds %>% select(-price)

diamonds %>% filter(carat > 1)

diamonds %>% filter(cut == 'Ideal')

diamonds %>% filter(cut == 'Ideal' & carat > 1)

diamonds %>% filter(cut == "Ideal" | color == 'I')

diamonds %>% filter(cut != 'Fair')

diamonds %>% filter(cut == 'Ideal' | cut == 'Premium')
diamonds %>% filter(cut == 'Ideal' | cut == 'Premium' | cut == 'Good')
diamonds %>% filter(cut %in% c('Ideal', 'Premium', 'Good'))
