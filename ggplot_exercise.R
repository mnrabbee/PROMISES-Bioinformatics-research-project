data = read.delim("gapminderDataFiveYear.txt" )
names(data)
p <- ggplot(subset(data, continent != "Oceania"),
            aes(x = gdpPercap, y = lifeExp))
p <- p + scale_x_log10()
p + geom_histogram()
p + geom_histogram(aes(color = continent))
p + geom_point(alpha = (1/3), size = 3) + geom_smooth(lwd = 3, se = FALSE)
p + geom_point(alpha = (1/3), size = 3) + facet_wrap(~ continent)
