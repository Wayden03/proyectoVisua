library(ggplot2)
library(dplyr)
library(ggmosaic)
library(patchwork)

data <- read.csv(file.choose(),header=TRUE,sep = ";")
attach(data)
print(names(data))


plot<- ggplot(data, aes(Clase.de.accidente, fill=Clase.de.accidente))+geom_bar()+
    ggtitle("Clase de Accidente")
#print(plot)

plot2<-ggplot(data, aes(x="", y=Tipo.de.accidente, fill=Tipo.de.accidente)) +
  geom_bar(stat="identity", width=1) +
  coord_polar("y", start=0)+
  ggtitle("Tipo de accidente")
print(plot2)


plot3<-ggplot(data, aes(Provincia, fill=Provincia))+geom_bar()+
    ggtitle("Provincia")
#print(plot3)