library(plotly)

df <- data.frame(
  Fruit = c("Apples", "Oranges", "Bananas"),
  Quantity = c(10, 15, 7)
)

fig <- plot_ly(data = df, x = ~Fruit, y = ~Quantity, type = 'bar')

htmlwidgets::saveWidget(fig, '/Users/aryan/Desktop/lang-vis-project/backend/tmp/68401b0c-121e-4d59-9967-b0d27a79e161.html', selfcontained = TRUE)