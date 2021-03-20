print("Hello")
x <- "Hello World"
x
install.packages("httr")
install.packages("jsonlite")
library(httr)
wynik1 <- library(httr2)
wynik2 <- require(jsonlite2)

library(httr)
library(jsonlite)

endpoint <- "https://api.openweathermap.org/data/2.5/weather?q=Warszawa&appid=1765994b51ed366c506d5dc0d0b07b77"
?httr
getWeather <- GET(endpoint)
getWeather
content(getWeather, as = "text")
weatherText <- content(getWeather, as="text")
weatherText

weatherJson <- fromJSON(weatherText, flatten = FALSE)
weatherJson

weatherDF <- as.data.frame(weatherJson)
weatherDF

View(weatherDF)
