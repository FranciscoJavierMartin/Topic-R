install.packages("jsonlite")
install.packages("curl") #Solo para json desde red
library(curl)
library(jsonlite)

dat.1<-fromJSON("../data/students.json")
dat.2<-fromJSON("../data/student-courses.json")

#Acceso a los campos dentro de un JSON
# mijson$campo1$campo2$campo3
#Se sigue pudiendo hacer uso de los indices de un array
# mijson$lista[1:5] retorna sublista de la 1 a la 5

dat.1[c(2,5,8),] #devuele las filas 2, 5 y 8
dat.2[,c(2,5)] # devuelve las columnas 2 y 5

#Convertir un dataframe en un json usar la funcion toJSON(...)