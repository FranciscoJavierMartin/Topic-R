clientes<-c("Juan Gabriel", "Ricardo", "Pedro")
#Convertir cadena en fecha
fechas<-as.Date(c("2017-12-27","2017-11-1","2018-1-1"))
pago<-c(315,192.55,40.15)
pedidos<-data.frame(clientes,fechas,pago)

clientes_vip<-c("Juan Gabriel","Ricardo")

save(pedidos,file="../data/pedidos.Rdata") #Guardar dataframe en fichero
saveRDS(pedidos,file="../data/pedidos.rds") #Guardar un objeto en fichero

#Se pueden guardar varios dataframes
save(pedidos,clientes_vip,file="../data/pedidos.Rdata")

remove(pedidos) #Elimina el dataframe de memoria

#Carga un dataframe de fichero
#El nombre de las variables sera el mismo que cuando se guardaron
load("../data/pedidos.Rdata")

#Carga un dataframe de fichero
#El contenido debe ser asignado a una variable
orders<-readRDS("../data/pedidos.rds")

#Cargar datasets preseleccionados.
#Hay que usarla para que aparezca el dataframe
data(iris)
data(cars)
view(iris)
view(cars)

#Guarda toda la sesion
save.image(file = "../data/all_data.Rdata")

primes<-c(2,3,5,7)
pow2<-c(2,4,8,16)
#Guarda varios objetos en un archivo
save(list = c("primes","pow2"),file="../data/prime_and_pow2.Rdata")

#Como load, pero avisa si ya existen variables con ese nombre
attach("../data/prime_and_pow2.Rdata")

#Muestra todos los datasets de prueba
data()
