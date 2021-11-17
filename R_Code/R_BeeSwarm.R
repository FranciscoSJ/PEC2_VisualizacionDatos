
# Cargamos el dataset del covod referente a todos los casos detectados
# los países europeos
covid <- read.csv("deteccion_covid.csv", header = TRUE, sep = ",")
# Seleccionamos unicamente los datos relativos a España
covidSP <- covid[covid$countriesAndTerritories == "Spain",]


library("beeswarm")

# Elaboramos el gráfico beeswarm considerando el ratio muertes/casos vs meses
beeswarm(covidSP$deaths / covidSP$cases ~ covidSP$month)

# Representamos el mismo gráfico de manera absoluta
beeswarm(covidSP$deaths / covidSP$cases)

