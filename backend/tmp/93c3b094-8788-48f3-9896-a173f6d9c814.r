library(ggplot2)

df <- data.frame(Fruit = c("Apples", "Oranges", "Bananas"),
                 Quantity = c(10, 15, 7))

ggplot(df, aes(x = Fruit, y = Quantity)) +
  geom_bar(stat = "identity") +
  ggtitle("Static R Bar Chart")

ggsave('/Users/aryan/Desktop/lang-vis-project/backend/tmp/93c3b094-8788-48f3-9896-a173f6d9c814.png')