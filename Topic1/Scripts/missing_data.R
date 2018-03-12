data<-read.csv("../data/missing-data.csv",na.strings = "")

#Omite las filas con datos faltantes
data.cleaned<-na.omit(data)

#Pregunta si la fila 4, columna 2 es Not Avaliable
is.na(data[4,2]) #Devuelve un booleano

#Lo mismo, pero con una columna y devuelve un vector de booleanos
is.na(data$Income)

#Devuelve todas las filas en las que la columna Income contenga valor
data.income.cleaned<-data[!is.na(data$Income),]

#Devuelve una array de booleanos segun tengan campos faltantes o no
complete.cases(data)

#Equivalente a 'na.omit(data)'
data.cleaned.2<-data[complete.cases(data),]

#Convertir los ceros de ingresos en NA
data$Income[data$Income==0]<-NA

#Medidas de centralizacion y dispersion
mean(data$Income) #Si hay algun NA, devuelve NA
mean(data$Income,na.rm = TRUE) #Ignora los NA al calcular

#Desviacion tipica
sd(data$Income)
sd(data$Income,na.rm=TRUE)
