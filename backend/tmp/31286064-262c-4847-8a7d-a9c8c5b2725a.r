library(plotly)

# Generate 3D surface data
x <- seq(-5, 5, length.out = 50)
y <- seq(-5, 5, length.out = 50)
z <- outer(x, y, function(x, y) sin(sqrt(x^2 + y^2)))

fig <- plot_ly(z = ~z, type = "surface")
fig <- fig %>% layout(title = "3D Surface Plot - Plotly (R)")


htmlwidgets::saveWidget(fig, '/Users/aryan/Desktop/lang-vis-project/backend/tmp/31286064-262c-4847-8a7d-a9c8c5b2725a.html', selfcontained = TRUE)