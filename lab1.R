
library(swirl)
install_course_zip("Lab_2.zip")


# INTERAKTYWNE ĆWICZENIA 1

# 1
suma <- function(a, b) { return(a + b) }
print(suma(11,100))

# 2
(function(x) x^3)(5)

# 3
funkcja <- function(wektor, f){
  return(sapply(wektor, FUN = f))
}

wektor <- c(14, 27, 32, 33, 51)

f <- function(x) x * 100

funkcja(wektor, f)


# INTERAKTYWNE ĆWICZENIA 2

# 1
wektor <- 1:10
mean(wektor)

# 2
macierz <- matrix(1:9, byrow = TRUE, ncol = 3)
macierz * 2

# 3
ramka <- data.frame(
  nazwa = c("chleb", "maslo", "mleko"),
  cena = c(5.60, 6.20, 3.99),
  ilosc = c(2, 5, 10)
)
ramka$koszt <- ramka$cena * ramka$ilosc
ramka

# 4
lista <- list(
  wektor = wektor,
  macierz = macierz,
  ramka = ramka
)

lista["ramka"]


