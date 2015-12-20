# Chargement de la bibliothèque qui va bien : ggplot2
library(ggplot2)
# Chargement d'une source CSV (ici avec en-tête et séparateur spécifique)
donnees <- read.csv("exemple.csv", header=TRUE, sep=";")
# Test pour comprendre comment accéder aux données
typeof(donnees)
donnees
donnees$Age
donnees$Age[10]
# Graphiques
plot(donnees$Age,donnees$Effectif)
# Test de renommage
test <- donnees$Age
plot(test,donnees$Effectif)
Age <- donnees$Age
Effectif <- donnees$Effectif
qplot(Age,Effectif,data=donnees)
# Exploration rapide de qplot
qplot(Age,Effectif,data=donnees,geom="line")
qplot(Age,Effectif,data=donnees,geom=c("line","point"))
qplot(Effectif,data=donnees,geom="bar")
qplot(Age,data=donnees,geom="bar")
qplot(Age,Effectif,data=donnees,geom="step")
# Exploration rapide de ggplot
ggplot(donnees,aes(x=Age,y=Effectif))
ggplot(donnees,aes(x=Age,y=Effectif)) + geom_bar(stat="identity")
ggplot(donnees,aes(x=Effectif,y=Age)) + geom_bar(stat="identity")
ggplot(donnees,aes(x=Age,y=Effectif)) + geom_bar(stat="identity")
ggplot(donnees,aes(x=factor(Effectif),y=Age)) + geom_bar(stat="identity")
ggplot(donnees,aes(x=Age,y=Effectif)) + geom_bar(stat="identity")
ggplot(donnees,aes(x=Age,y=Effectif)) + geom_point(aes(colour=Age))