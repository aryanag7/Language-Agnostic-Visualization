library(plotly)

data <- data.frame(
  Fruit = c("Apple", "Banana", "Cherry"),
  Quantity = c(10, 20, 15)
)

fig <- plot_ly(data, x = ~Fruit, y = ~Quantity, type = 'bar')

htmlwidgets::saveWidget(fig, '/Users/aryan/Desktop/lang-vis-project/backend/tmp/4744a51f-2b10-47ec-a87d-e2287b241372.html', selfcontained = TRUE)