setwd("~/Downloads/Desktop/Projects/Project1")
french <- read.csv("~/Downloads/Desktop/Projects/Project1/french.csv", header = TRUE, sep = ",", fileEncoding="latin1")

french$pos <- french$POS.FREQ >= .6
pos.words <- rep(NA,583)
neg.words <- rep(NA,583)
pos.words <- french[french$pos == "TRUE",]
neg.words <- french[french$pos == "FALSE",]
pos.words <-pos.words[,1]
neg.words <- neg.words[,1]