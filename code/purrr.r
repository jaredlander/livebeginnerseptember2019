c(1, 2, 4, 8)
c('red', 'green', 'blue')
c('red', 'blue', 'red', 'green', 'blue', 'blue')
c(1, 'red', 2, 2, 'blue')

list(1, 2, 4, 8)
list(1, 'red', 2, 'blue', 3)

list(c(4, 13, 27), c('red', 'blue', 'red', 'green'))

list1 <- list(c(4, 13, 27), c('red', 'blue', 'red', 'green'))
list1

list2 <- list(1:5, list1, head(iris))
list2

list3 <- list(A=1:5, B=LETTERS, Sport=c('Hockey', "Lacrosse", "Curling"))
list3

list3[[2]]
list3[['B']]
list3$B
list3[2]

class(list3[[2]])
class(list3[2])

list4 <- list(A=1:100, B=17, C=c(3, 1, 8, 12), D=10:-5)
list4

sum(list4[[1]])
sum(list4[[2]])
sum(list4[[3]])
sum(list4[[4]])

library(purrr)

map(list4, sum)
list4 %>% map(sum)
list4 %>% map(length)

list4 %>% map(sum) %>% class()
list4 %>% map_dbl(sum)
list4 %>% map_dbl(sum) %>% class()
list4 %>% map_dbl(sum) %>% is.vector()
list4 %>% map_dbl(sum)

list4 %>% map_dbl(sum) %>% mean()
list4 %>% map(sum) %>% mean()
# list4 %>% map(sum) %>% reduce(roll)

