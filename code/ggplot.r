library(ggplot2)

data(diamonds, package='ggplot2')

ggplot(diamonds)

# aesthetics
# x
# y
# color
# shape
# size

# x: carat
# y: price

ggplot(diamonds, aes(x=carat, y=price))

ggplot(diamonds, aes(x=carat, y=price)) + geom_point()
ggplot(diamonds, aes(x=carat, y=price, color=cut)) + geom_point()
ggplot(diamonds, aes(x=carat, y=price, color=cut)) + geom_point(shape=1)
ggplot(diamonds, aes(x=carat, y=price, color=cut)) + geom_point(shape=1, size=1)
ggplot(diamonds, aes(x=carat, y=price, color=cut, shape=cut)) + geom_point(size=1)


ggplot(diamonds, aes(x=carat, y=price, color=cut)) + 
    geom_point(size=1, shape=1) + 
    scale_color_brewer(palette='Dark2')

ggplot(diamonds, aes(x=carat, y=price, color=cut)) + 
    geom_point(size=1, shape=1)
ggplot(diamonds, aes(x=carat, y=price)) + 
    geom_point(size=1, shape=1, aes(color=cut))

ggplot(diamonds, aes(x=carat, y=price, color=cut)) + 
    geom_point(shape=1, size=1) + 
    geom_smooth()

ggplot(diamonds, aes(x=carat, y=price)) + 
    geom_point(shape=1, size=1, aes(color=cut)) + 
    geom_smooth()
ggplot(diamonds, aes(x=carat, y=price)) + 
    geom_point(shape=1, size=1, aes(color=cut)) + 
    geom_smooth(aes(color=cut)) + 
    geom_smooth(color='hotpink')

ggplot(diamonds, aes(x=carat, y=price)) + 
    geom_point(shape=1, size=1, aes(color=cut)) + 
    geom_smooth(aes(color=cut)) + 
    geom_smooth(color='hotpink') +
    facet_wrap( ~ cut )

ggplot(diamonds, aes(x=carat, y=price)) + 
    geom_point(shape=1, size=1, aes(color=cut)) + 
    geom_smooth(aes(color=cut)) + 
    geom_smooth(color='hotpink') +
    facet_wrap( ~ cut ) +
    theme(legend.position='none')

ggplot(diamonds, aes(x=carat, y=price)) + 
    geom_point(shape=1, size=1, aes(color=cut), alpha=1/3) + 
    geom_smooth(aes(color=cut)) + 
    geom_smooth(color='red') +
    facet_wrap( ~ cut ) +
    theme(legend.position='none')

ggplot(diamonds, aes(x=price)) + 
    geom_histogram()

ggplot(diamonds, aes(x=price, color=cut)) + 
    geom_histogram()
ggplot(diamonds, aes(x=price, fill=cut)) + 
    geom_histogram()
ggplot(diamonds, aes(x=price, fill=cut)) + 
    geom_histogram(position=position_dodge())

ggplot(diamonds, aes(x=price, fill=cut)) + 
    geom_density()
ggplot(diamonds, aes(x=price, fill=cut)) + 
    geom_density(alpha=1/3)

ggplot(diamonds, aes(x=price, fill=cut)) + 
    geom_density() +
    facet_wrap( ~ cut ) + 
    theme(legend.position='none')

library(ggridges)
ggplot(diamonds, aes(x=price, y=cut)) + 
    geom_density_ridges()
ggplot(diamonds, aes(x=price, y=cut, fill=cut)) + 
    geom_density_ridges() + 
    theme(legend.position='none')

