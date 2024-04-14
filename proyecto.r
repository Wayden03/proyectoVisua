library(ggplot2)

data <- read.csv(file.choose(),header=TRUE,sep = ";")
attach(data)
print(names(data))


plot<- ggplot(data, aes(Clase.de.accidente, fill=Clase.de.accidente))+geom_bar()+
    ggtitle("Clase de Accidente")
print(plot)