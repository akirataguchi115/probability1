n <- 1000000000
tulos <- sample(1:6, n, replace = TRUE)
lkm <- sum(tulos >= 5)
osuus <- lkm / n
osuus