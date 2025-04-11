library(plotly)

data <- data.frame(
  Fruit = c("Apple", "Banana", "Cherry"),
  Quantity = c(10, 20, 15)
)

fig <- plot_ly(data, x = ~Fruit, y = ~Quantity, type = 'bar')

htmlwidgets::saveWidget(fig, '/Users/aryan/Desktop/lang-vis-project/backend/tmp/fddd9295-c7f0-4596-90f1-098db6a4249a.html', selfcontained = TRUE)