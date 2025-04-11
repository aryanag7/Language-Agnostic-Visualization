library(plotly)

df <- data.frame(Fruit = c("Apples", "Oranges", "Bananas"),
                 Quantity = c(10, 15, 7))

fig <- plot_ly(data = df, x = ~Fruit, y = ~Quantity, type = 'bar')


htmlwidgets::saveWidget(fig, '/Users/aryan/Desktop/lang-vis-project/backend/tmp/af9619fc-af57-45ed-b569-3d7d9761cd82.html', selfcontained = TRUE)