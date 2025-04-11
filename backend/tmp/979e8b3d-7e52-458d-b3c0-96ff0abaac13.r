library(plotly)

df <- data.frame(Fruit = c("Apples", "Oranges", "Bananas"),
                 Quantity = c(10, 15, 7))

fig <- plot_ly(data = df, x = ~Fruit, y = ~Quantity, type = 'bar')


htmlwidgets::saveWidget(fig, '/Users/aryan/Desktop/lang-vis-project/backend/tmp/979e8b3d-7e52-458d-b3c0-96ff0abaac13.html', selfcontained = TRUE)