library(plotly)

df <- data.frame(Fruit = c("Apples", "Oranges", "Bananas"),
                 Quantity = c(10, 15, 7))

fig <- plot_ly(data = df, x = ~Fruit, y = ~Quantity, type = 'bar')
       
htmlwidgets::saveWidget(fig, '/Users/aryan/Desktop/lang-vis-project/backend/tmp/56bdb29e-721f-4176-bba9-0a2fdf72608c.html', selfcontained = TRUE)