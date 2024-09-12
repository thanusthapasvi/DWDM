data <- data.frame(
  CustomerID = c(1, 2, 3, 4, 5),
  Gender = c('Male', 'Male', 'Female', 'Female', 'Female'),
  Age = c(19, 21, 20, 23, 31),
  Annual_Income_k = c(15, 15, 16, 16, 17),
  Spending_Score = c(39, 81, 6, 77, 40)
)

X <- data[, c("Annual_Income_k", "Spending_Score")]
set.seed(42)
kmeans_model <- kmeans(X, centers = 5, nstart = 25)
data$Cluster <- as.factor(kmeans_model$cluster)
print(data)
library(ggplot2)

ggplot(data, aes(x = Annual_Income_k, y = Spending_Score, color = Cluster)) +
  geom_point(size = 3) +
  labs(title = "Customer Segmentation Based on Income and Spending Score",
       x = "Annual Income (k$)",
       y = "Spending Score (1-100)") +
  theme_minimal()
