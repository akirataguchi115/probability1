# 6.a)
n <- 10^6
a <- 15
b <- 20

x <- runif(n)
hist(x)
y <- (b - a) * x + a
hist(y)
# Muunnetut luvut näyttävät tasajakautuneilta välillä 15 ja 20.
# Histogrammi siis vastaa
# "Tasainen jakauma säilyy lineaarimuunnoksissa"
# -lauseen odotuksia.


# 6.b)
y <- -log(x)
# Tutkitaan histogrammia
hist(y)

# Verrataan eksponenttijakauman Exp(1) tiheysfunktioon, kun lambda > 0
curve(exp(-x), from = 0, to = 15, , xlab = "x", ylab = "y")

# Verrataan vielä tapahtuman Y <= 2 suhteellista frekvenssiä
# (sum(y <= 2) / n) kyseisen tapahtuman todennäköisyyteen, jos Y ∼ Exp(1).
# TODO
rel_freq <- sum(y <= 2) / n
rel_freq

# laske Y ~ Exp(1) numeerinen arvo ja vertaa test -muuttujaan
# eksponenttifunktion kertymäfunktio lasketaan kaavalla
#  1 - e^(-lambda * x) = 1 - e^-2 ~= 0,864665