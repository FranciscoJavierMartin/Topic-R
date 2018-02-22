#Fixed width file = ficheros de ancho fijo
#En el parametro width se indica el ancho de cada columna
students_data<-read.fwf("../data/student-fwf.txt",widths = c(4,15,20,15,4),
                        col.names = c("id","nombre","email","carrera","agno"))

students_data_header<-read.fwf("../data/student-fwf-header.txt",
                               widths = c(4,15,20,15,4), header = TRUE,
                               sep="\t",skip=2)
#Si quieres no coger una columna se pone su ancho en negativo
students_data_no_email<-read.fwf("../data/student-fwf.txt",widths = c(4,15,-20,15,4),
                        col.names = c("id","nombre","carrera","agno"))