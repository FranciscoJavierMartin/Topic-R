auto=read.csv("../data/auto-mpg.csv",header=TRUE,sep=",",stringsAsFactors = FALSE)
names(auto) #Nombre de las columnas

auto_no_header=read.csv("../data/auto-mpg-noheader.csv",header=FALSE)

head(auto_no_header,4)

auto_custom_header<-
  read.csv("../data/auto-mpg-noheader.csv",header=FALSE,
           col.names = c("numero",
                         "millas_por_galon",
                         "cilindrada",
                         "desplazamiento",
                         "caballos_de_potencia",
                         "peso",
                         "aceleracion",
                         "agno",
                         "modelo")) #Nombres de columnas personalizados

head(auto_custom_header,3)
