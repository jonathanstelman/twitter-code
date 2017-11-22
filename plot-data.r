counts=table(results$screenName)
barplot(counts, las=2)

#By time of day
hist(results$created, breaks = "h")