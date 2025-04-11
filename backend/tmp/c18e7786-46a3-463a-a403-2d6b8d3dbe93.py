library(plotly)

# Generate 3D surface data
x <- seq(-5, 5, length.out = 50)
y <- seq(-5, 5, length.out = 50)
z <- outer(x, y, function(x, y) sin(sqrt(x^2 + y^2)))

fig <- plot_ly(z = ~z, type = "surface")
fig <- fig %>% layout(title = "3D Surface Plot - Plotly (R)")


import matplotlib.pyplot as plt
plt.savefig('/Users/aryan/Desktop/lang-vis-project/backend/tmp/c18e7786-46a3-463a-a403-2d6b8d3dbe93.png')