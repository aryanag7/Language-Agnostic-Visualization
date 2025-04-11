library(plotly)

z <- outer(seq(-2, 2, 0.1), seq(-2, 2, 0.1), function(x, y) sin(sqrt(x^2 + y^2)))
fig <- plot_ly(z = ~z)
fig <- fig %>% add_surface()


htmlwidgets::saveWidget(fig, '/Users/aryan/Desktop/lang-vis-project/backend/tmp/8081dddd-a44a-4591-aafb-4ddbecc3c3df.html', selfcontained = TRUE)