install.packages("rworldmap",dependencies=TRUE)
library(rworldmap)
mapDevice('x11')

sync <- read.csv("E:/R/Sync/Data/Sync.csv")
spdf <- joinCountryData2Map(sync, joinCode="NAME", nameJoinColumn="Country")
mapCountryData(spdf, nameColumnToPlot="Offices", catMethod="fixedWidth")