library(plotly)

df <- data.frame(Fruit = c("Apples", "Oranges", "Bananas"),
                 Quantity = c(10, 15, 7))

fig <- plot_ly(data = df, x = ~Fruit, y = ~Quantity, type = 'bar')
       
htmlwidgets::saveWidget(fig, '/Users/aryan/Desktop/lang-vis-project/backend/tmp/1cf4dda3-e63f-4896-9899-b0c87212cacf.html', selfcontained = TRUE)