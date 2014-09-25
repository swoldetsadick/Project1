# Setting Working Directory and Loading Data from tomdesmedt github repo
setwd("~/Downloads/Desktop/Projects/Project1")
french <- read.csv("~/Downloads/Desktop/Projects/Project1/french.csv", header = TRUE, sep = ",", fileEncoding="latin1")

#I am going to make a completely arbitrary decision here and choose to categorize 
#each adjective as positive or negative based on their weight/score.
french$pos <- french$POS.FREQ >= .6

pos.words <- rep(NA,583)
neg.words <- rep(NA,583)
names(pos.words) <- "words"
names(neg.words) <- "words"

pos.words <- french[french$pos == "TRUE",]
neg.words <- french[french$pos == "FALSE",]
pos.words <-pos.words[,1]
neg.words <- neg.words[,1]

write.table(pos.words, file="./poswords.txt", row.names = FALSE, col.names = TRUE, quote = FALSE, fileEncoding="latin1")
write.table(neg.words, file="./negwords.txt", row.names = FALSE, col.names = TRUE, quote = FALSE, fileEncoding="latin1")
geocode(47, 2, 293km)