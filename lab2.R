
dane <- read.csv("q1_data.csv")

colnames(dane)

dane[1:2,]

length(dane[,1])
str(dane)

tail(dane, 2)

dane[47,]$Ozone
dane$Ozone[47]

sum(is.na(dane$Ozone))

mean(dane$Ozone, na.rm = TRUE)

mean(dane[dane$Ozone > 31 & dane$Temp > 90,]$Solar.R, na.rm = TRUE)
mean(dane[dane$Ozone > 31 & dane$Temp > 90, "Solar.R"], na.rm = TRUE)

mean(dane[dane$Month == 6, "Temp"])

max(dane[dane$Month == 5, "Ozone"], na.rm = TRUE)



