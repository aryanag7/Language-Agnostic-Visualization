library(plotly)

data <- data.frame(
  Fruit = c("Apple", "Banana", "Cherry"),
  Quantity = c(10, 20, 15)
)

fig <- plot_ly(data, x = ~Fruit, y = ~Quantity, type = 'bar')

htmlwidgets::saveWidget(fig, '/Users/aryan/Desktop/lang-vis-project/backend/tmp/22e1fe93-713e-4dd5-8e05-5e5bdcd4f54b.html', selfcontained = TRUE)