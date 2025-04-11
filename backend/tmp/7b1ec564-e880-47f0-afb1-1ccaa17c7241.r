library(plotly)

data <- data.frame(
  category = c("Apples", "Oranges", "Bananas"),
  count = c(10, 15, 7)
)

fig <- plot_ly(data, labels = ~category, values = ~count, type = 'pie') %>%
  layout(title = "Interactive Pie Chart - plotly")

htmlwidgets::saveWidget(fig, '/Users/aryan/Desktop/lang-vis-project/backend/tmp/7b1ec564-e880-47f0-afb1-1ccaa17c7241.html', selfcontained = TRUE)