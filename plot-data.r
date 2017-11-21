TL <- searchTwitter("search query", n=0, since='2017-11-15', until='2017-11-21') new_search new_search counts=table(TL$screenName)
barplot(counts, las=2)

#By time of day
hist(TL$created, breaks = "h")