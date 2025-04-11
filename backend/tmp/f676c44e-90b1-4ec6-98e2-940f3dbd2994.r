library(plotly)

df <- data.frame(Fruit = c("Apples", "Oranges", "Bananas"),
                 Quantity = c(10, 15, 7))

fig <- plot_ly(data = df, x = ~Fruit, y = ~Quantity, type = 'bar')


ggsave('/Users/aryan/Desktop/lang-vis-project/backend/tmp/f676c44e-90b1-4ec6-98e2-940f3dbd2994.png')