install.packages("XML")
library(XML)

url <- "../data/cd_catalog.xml"

xmldoc<-xmlParse(url) #Devuelve un XMLInternalDocument
rootnode <- xmlRoot(xmldoc)

rootnode[1] # Primer elemento del documento

#xmlSApply recorre todos los hijos del nodo y les aplica una funcion
cds_data<-xmlSApply(rootnode,function(x) xmlSApply(x,xmlValue))      
#Transpone la matriz y lo convierte en dataframe
cds.catalog<-data.frame(t(cds_data),row.names = NULL)
cds.catalog[1:5,] #Carga las filas de la 1 a la 5 y todas las columnas

#xpathSApply() para trabajar con documentos XML
#getNodeSet()

population_url<-"../data/WorldPopulation-wiki.htm"
tables<-readHTMLTable(population_url)

#Es una lista de listas
most_populate<-tables[[6]] #Extraemos la sexta tabla

#Lo mismo, pero mas abreviado
custom_table<-readHTMLTable(population_url,wich=6)
