library(plotly)

data <- data.frame(
  Fruit = c("Apple", "Banana", "Cherry"),
  Quantity = c(10, 20, 15)
)

fig <- plot_ly(data, x = ~Fruit, y = ~Quantity, type = 'bar')

htmlwidgets::saveWidget(fig, '/Users/aryan/Desktop/lang-vis-project/backend/tmp/f5b64b3c-2967-4b1a-a471-7e156382b0dd.html', selfcontained = TRUE)