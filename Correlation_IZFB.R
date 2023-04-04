library("ggpubr")
library("openxlsx")
rm(list=ls())
getwd()

data <- read.xlsx("genes usp.xlsx", rowNames=TRUE)
res <- cor.test(data$POLI, data$POLK, 
                method = "pearson")
res

library(corrplot)
library(RColorBrewer)



rquery.cormat(data)
