library(ggplot2)

data <- data.frame(
  category = c("Apples", "Oranges", "Bananas"),
  count = c(10, 15, 7)
)

ggplot(data, aes(x = "", y = count, fill = category)) +
  geom_bar(stat = "identity", width = 1) +
  coord_polar(theta = "y") +
  theme_void() +
  ggtitle("Static Pie Chart - ggplot2")

ggsave('/Users/aryan/Desktop/lang-vis-project/backend/tmp/eb0021a7-9f07-42ab-bbc5-80a4282b5835.png')