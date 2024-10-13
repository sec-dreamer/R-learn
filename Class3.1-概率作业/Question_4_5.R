# ========================= Question 4 ===========================

# -------------A---------------
min_X <- 1
max_X <- 3
min_Y <- 0.5
max_Y <- 10.5

p_x_less_3.5 <- punif(3.5, min = min_X, max = max_X)                   # P(X < 3.5)
p_y_less_3.5 <- punif(3.5, min = min_Y, max = max_Y)                   # P(Y < 3.5)
p_x_greater_2.5 <- 1 - punif(2.5, min = min_X, max = max_X)            # P(X > 2.5)
p_y_greater_2.5 <- 1 - punif(2.5, min = min_Y, max = max_Y)            # P(Y > 2.5)
p_x_between_2.3_3 <- punif(3, min = min_X, max = max_X) - punif(2.3, min = min_X, max = max_X) # P(2.3 < X < 3)
p_y_between_2.3_5.3 <- punif(5.3, min = min_Y, max = max_Y) - punif(2.3, min = min_Y, max = max_Y) # P(2.3 < Y < 5.3)

# -------------B---------------
mu_Z <- 0
sigma_Z <- 1
mu_T <- 3
sigma_T <- 2

p_z_less_1 <- pnorm(1, mean = mu_Z, sd = sigma_Z)                       # P(Z < 1)
p_t_less_1 <- pnorm(1, mean = mu_T, sd = sigma_T)                       # P(T < 1)
p_z_equals_3 <- dnorm(3, mean = mu_Z, sd = sigma_Z)                     # P(Z = 3)
p_t_equals_3 <- dnorm(3, mean = mu_T, sd = sigma_T)                     # P(T = 3)
p_z_between <- pnorm(0.5, mean = mu_Z, sd = sigma_Z) - pnorm(-0.5, mean = mu_Z, sd = sigma_Z) # P(-0.5 < Z < 0.5)
p_t_between <- pnorm(0.5, mean = mu_T, sd = sigma_T) - pnorm(-0.5, mean = mu_T, sd = sigma_T) # P(-0.5 < T < 0.5)


# -------------Z---------------
mu_Z <- 0
sigma_Z <- 1
mu_T <- 3
sigma_T <- 2

par(mfrow = c(2, 2))

#Z的CDF
curve(dnorm(x, mean = mu_Z, sd = sigma_Z), from = -5, to = 5, 
      col = "blue", ylab = "Density", xlab = "x", 
      main = "PDF of Z ~ N(0, 1)")

#Z的PDF
curve(pnorm(x, mean = mu_Z, sd = sigma_Z), from = -5, to = 5, 
      col = "blue", ylab = "Probability", xlab = "x", 
      main = "CDF of Z ~ N(0, 1)")

#T的PDF
curve(dnorm(x, mean = mu_T, sd = sigma_T), from = -5, to = 10, 
      col = "purple", ylab = "Density", xlab = "x", 
      main = "PDF of T ~ N(3, 2)")

#T的CDF
curve(pnorm(x, mean = mu_T, sd = sigma_T), from = -5, to = 10, 
      col = "purple", ylab = "Probability", xlab = "x", 
      main = "CDF of T ~ N(3, 2)")


# ========================= Question 5 ===========================
# -------------A---------------
df <- read.csv("./Class4/Football22.csv")
set.seed(1414)
sample_football <- df[sample(1:nrow(df), 14), ]
print(sample_football[4, ])

# -------------B---------------
set.seed(1234)
leagues <- unique(df$League)
sampled <- data.frame()

for (l in leagues) {
    temp <- df[df$League == l, ]
    size <- ceiling(0.2 * nrow(temp))
    sampled <- rbind(sampled, temp[sample(1:nrow(temp), size), ])
}

print(sampled[3:4, ])


# -------------C---------------
set.seed(1000)
cl <- unique(df$League)
sel <- sample(cl, 2)
sampled <- df[df$League %in% sel, ]
print(sampled[c(3, 11), ])

# -------------D---------------
# Stratified Sampling Method