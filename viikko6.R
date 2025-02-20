p <- 1 / 6
n <- 27778
heads <- sum(rbinom(n, 1, p))
rv_x <- heads / n
error <- abs(rv_x - p)
error
# t6: Virhe on asettamamme tarkkuusvaatimuksemme mukainen
# eli pienempi kuin epsilon (0,01)x