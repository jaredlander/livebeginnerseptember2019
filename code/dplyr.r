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


diamonds %>% slice(4)
diamonds %>% slice(2:7)
diamonds %>% slice(c(2, 9, 14))

diamonds %>% mutate(price / carat)
326/0.23

diamonds %>% mutate(Ratio=price / carat)
diamonds

diamonds2 <- diamonds %>% mutate(Ratio=price / carat)
diamonds2
diamonds

diamonds %>% 
    mutate(Ratio = price/carat) %>% 
    mutate(Double=Ratio*2)

diamonds %>% 
    mutate(Ratio=price/carat, Double=Ratio*2)

diamonds %>% summarize(mean(price))
diamonds %>% summarize(AvgPrice=mean(price))
diamonds %>% summarize(AvgPrice=mean(price), MedianSize=median(carat))
summarise
summarize

diamonds %>% filter(cut == 'Ideal') %>% summarize(AvgPrice=mean(price))
diamonds %>% filter(cut == 'Premium') %>% summarize(AvgPrice=mean(price))

diamonds %>% 
    group_by(cut)

diamonds %>% 
    group_by(cut) %>% 
    summarize(AvgPrice = mean(price))

diamonds %>% 
    group_by(cut, color) %>% 
    summarize(AvgPrice=mean(price), MedianSize=median(carat))

# calculate the median price and average carat size
# for diamonds greater than 1 carat
# for each cut of diamond
# sort by the median price (you have not seen this yet)

diamonds %>% 
    filter(carat > 1) %>% 
    group_by(cut) %>% 
    summarize(MedianPrice=median(price), AvgSize=mean(carat)) %>% 
    arrange(-MedianPrice)

arrange(
    summarize(
        group_by(
            filter(
                diamonds, carat > 1
            ), cut
        ), MedianPrice=median(price), AvgSize=mean(carat)
    ), -MedianPrice
)

diamonds %>% 
    group_by(cut) %>% 
    summarize(n())

diamonds %>% count(cut)
