set.seed(1234)
generate_histogram <- function(n, lambda, num_samples) {
    means <- numeric(n)
    for (i in 1:n) {
        sample <- rexp(num_samples, rate = lambda)
        means[i] <- mean(sample)
    }
    hist(means, main = paste("Histogram of Sample Means (n =", n, ")"),
         xlab = "Means", breaks = 10, col = "lightblue")
}
# ==========Q2==========
par(mfrow=c(1,3))
lamda <- 2
num_samples <- 100
generate_histogram(10, lamda, num_samples)
generate_histogram(100, lamda, num_samples)
generate_histogram(10000, lamda, num_samples)

df <- read.csv('./Class5/CPLPlayers.csv', header = T)
data_filtered <- subset(df, df$GM > 10)
mean_min <- mean(data_filtered$Min)
se_min <- sd(data_filtered$Min) / sqrt(nrow(data_filtered))
z <- qnorm(0.90)
 c(mean_min - se_min*z, mean_min + se_min * z)

 
data_filtered <- subset(df, df$Age <= 21)
p_hat <- sum(data_filtered$Min) / sum(df$Min)
SE <- sqrt(p_hat * (1-p_hat)/ nrow(df))
z <- qnorm(0.99)
c(p_hat - z*SE, p_hat + z*SE)
alpha <- 1-0.95
c((n-1)*var() / qchisq(alpha/2, df = n-1),(n-1)*var() / qchisq(1-alpha/2, df = n-1))
  
  
  

# ==================Q4=============
45 / (3 * 3)

g1:1, ph=7
g2:1, ph=8
g3:1, ph=9

g4:2, ph=7
...
g9:3, ph=9



  