library(readxl)
library(lubridate)
library(dplyr)
setwd("C:/ASIGNATURAS/Data Science/Reto 04/Ejercicio 1 clase/Ejercicio-1/datos")
dir()

datos <- read_xlsx("online_retail_II.xlsx")
str(datos)

datos$InvoiceDate <- ymd_hms(datos$InvoiceDate)
datos$Invoice <- as.factor(datos$Invoice)


summary(datos)
head(datos)
str(datos)
class(datos)
length(datos)
dim(datos)

pedidos_diferentes<-length(unique(datos$Invoice))

