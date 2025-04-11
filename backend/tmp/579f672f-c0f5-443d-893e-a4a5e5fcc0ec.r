library(plotly)

data <- data.frame(
  Fruit = c("Apple", "Banana", "Cherry"),
  Quantity = c(10, 20, 15)
)

fig <- plot_ly(data, x = ~Fruit, y = ~Quantity, type = 'bar')


htmlwidgets::saveWidget(fig, '/Users/aryan/Desktop/lang-vis-project/backend/tmp/579f672f-c0f5-443d-893e-a4a5e5fcc0ec.html', selfcontained = TRUE)