library(ggplot2)

data <- data.frame(
  Fruit = c("Apple", "Banana", "Cherry"),
  Quantity = c(10, 20, 15)
)

ggplot(data, aes(x = Fruit, y = Quantity)) +
  geom_bar(stat = "identity", fill = "steelblue") +
  ggtitle("Static Bar Chart")

ggsave('/Users/aryan/Desktop/lang-vis-project/backend/tmp/8216c89a-7859-4479-a34d-27fba216e575.png')