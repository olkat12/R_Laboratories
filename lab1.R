
library(swirl)
install_course_zip("Lab_2.zip")
swirl()


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

# INTERAKTYWNE ĆWICZENIA 3

# 1
for(i in 1:10){
  if(i %% 2 == 0){
    print(i)
  }
}

# 2
j = 100
while(j > 50){
  j = j-10
  print(j)
}

# 3
zmienna = "3"
wynik <- switch(zmienna,
                "1" = "Poniedzialek",
                "2" = "Wtorek",
                "3" = "Sroda",
                "4" = "Czwartek",
                "5" = "Piatek",
                "6" = "Sobota",
                "7" = "Niedziela")
print(wynik)

# 4
liczba = -5

if(liczba > 0){
  print(paste("Liczba", liczba, "jest dodatnia", sep = " "))
} else if(liczba < 0){
  print(paste("Liczba", liczba, "jest ujuemna", sep = " "))
} else{
  print(paste("Liczba", liczba, "jest zerem", sep = " "))
}

# INTERAKTYWNE ĆWICZENIA 4

# 1

silnia <- function(x){
  
  if(x == 0) {return(1)}
  return(x * silnia(x-1))
}

silnia(5)

# 2
czy_pierwsza <- function(x){
  
  if(x < 2) {return(FALSE)}
  if(x == 2) {return(TRUE)}
  if(x %% 2 == 0) {return(FALSE)}
  
  dzielnik = 3
  while(dzielnik * dzielnik <= x){
    if(x %% dzielnik == 0){
      return(FALSE)
    }
    dzielnik = dzielnik +2
  }
  return(TRUE)
}

czy_pierwsza(3)

# 3

stat <- function(liczby){
  srednia = mean(liczby)
  odchylenie = sd(liczby)
  
  return(list("srednia" = srednia,
              "odchylenie" = odchylenie))
}

stat(c(1:10))

# 4
ramka_generuj <- function(imie, wiek, oceny){
  
  return(data.frame(
    "imie" = imie,
    "wiek" = wiek,
    "oceny" = oceny
  ))
}

imie = c("Ala", "Ola", "Ula")
wiek = c(14, 17, 13)
oceny = c(5, 4.5, 3.5)

ramka <- ramka_generuj(imie, wiek, oceny)






