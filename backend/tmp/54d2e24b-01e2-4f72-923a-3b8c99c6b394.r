library(ggplot2)

data <- data.frame(
  Fruit = c("Apple", "Banana", "Cherry"),
  Quantity = c(10, 20, 15)
)

ggplot(data, aes(x = Fruit, y = Quantity)) +
  geom_bar(stat = "identity", fill = "steelblue") +
  ggtitle("Static Bar Chart")


ggsave('/Users/aryan/Desktop/lang-vis-project/backend/tmp/54d2e24b-01e2-4f72-923a-3b8c99c6b394.png')