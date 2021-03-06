#File 4: Association Rule Mining

#--------------------------------- Install Packages & Load Libraries ----------------------------------#
#Install the packages needed for association rule mining
install.packages("arules")
install.packages("arulesViz")

#Load the required packages for association rule mining
library(arules)
library(arulesViz)

#help for apriori
?apriori

#Display all outputs
options(max.print = .Machine$integer.max)

#---------------------------------- Apriori Algorithm for Analysis1 -----------------------------------#

#Run the apriori algorithm for first analysis
ruleSet1 <- apriori(preprocessed, parameter = list(support = 0.01, confidence = 0.4))
#Get the performance summary and number of rules
summary(ruleSet1)

#Inspect the rules produced by the algorithm
inspect(head(ruleSet1, 1302))

#Write the rules of analysis into a csv file
write(ruleSet1, file = "Analysis1.csv")

#---------------------------------- Apriori Algorithm for Analysis2 -----------------------------------#

#Run the apriori algorithm for first analysis
ruleSet2 <- apriori(preprocessed, parameter = list(support = 0.001, confidence = 0.3, target = "rules"))
#Get the performance summary and number of rules
summary(ruleSet2)

      
#Inspect the rules produced by the algorithm 
inspect(head(ruleSet2, 22530 ))

#Write the rules of analysis into a csv file
write(ruleSet2, file = "Analysis2.csv")

#---------------------------------- Apriori Algorithm for Analysis3 -----------------------------------#

#Run the apriori algorithm for first analysis
ruleSet3 <- apriori(preprocessed, parameter = list(support = 0.002, confidence = 0.5, target = "rules"))
#Get the performance summary and number of rules
summary(ruleSet3)

#Inspect the rules produced by the algorithm
inspect(head(ruleSet3, 6523))

#Write the rules of analysis into a csv file
write(ruleSet3, file = "Analysis3.csv")
