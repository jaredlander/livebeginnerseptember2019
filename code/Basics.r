2 * 3
4/2
4/3

2^3

# PEMDAS
# BODMAS

5 + 4 * 3
5 + (4 * 3)
(5 + 4) * 3

x <- 2
x

y = 3
y

z <- 7

library(readr)

tomato <- read_csv('data/TomatoFirst.csv')
tomato
class(tomato)

library(readxl)

excel_sheets('data/ExcelExample.xlsx')
wine <- read_excel('data/ExcelExample.xlsx', sheet='Wine')
wine
