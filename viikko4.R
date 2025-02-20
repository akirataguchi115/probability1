n <- 10  # Simuloitujen matkojen lukumäärä

# Simuloidaan n bussimatkaa
x <- runif(n, 0, 5)  # Arvotaan tasajakaumasta
y <- runif(n, 10, 16)  # Arvotaan tasajakaumasta
s <- x + y  # Saapumisaika

# Tutkitaan, millä kerroilla herra K ehti töihin
ehti <- (s <= 20)
ehti_lkm <- sum(ehti)
ehti_osuus <- ehti_lkm / n
ehti_osuus

# Vastaus
n <- 10000
x <- runif(n, 0, 5)
y <- runif(n, 10, 27)
s <- x + y
ehti <- (s <= 20)
ehti_lkm <- sum(ehti)
ehti_osuus <- ehti_lkm / n
sprintf("Herra K ehtii töihin %s %% kerroista", ehti_osuus * 100)