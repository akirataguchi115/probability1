seuraava_tila <- function(x) {
  #x: nykyinen tila

  if (x < 0) {
    return("invalid arguments")
  }

  return((41 * x + 7) %% 100)
}

seuraava_luku <- function(x) {
  #x: generaattorin tila

  if (x < 0) {
    return("invalid arguments")
  }

  return(floor(seuraava_tila(x) / 10))
}

sarja <- function(x, y) {
  #x: lahtotila
  #y: montako

  tulos <- seuraava_luku(x)
  tila <- seuraava_tila(x)

  while (length(tulos) < y) {
    tulos <- c(tulos, seuraava_luku(tila))
    tila <- seuraava_tila(tila)
    sprintf("%s blaah", tila)
  }

  return(tulos)
}
