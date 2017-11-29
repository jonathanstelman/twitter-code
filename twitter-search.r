# Execute scheduled search

# Set environment
library(ROAuth)
library(twitteR)
library(dplyr)
library(tidyr)

api_key <- 'xfweW6pW0xotKQzfkocM7xj0p'
api_secret <-'VquI5RIJ5LgBUI5EeBgtYyBgn5QsejxIcr4XrCRk0HhzC51lu1'
access_token <- '799339669527953408-rmOnUIlw7uy17CXHw0sXwhJg85oi5we'
access_token_secret <- 'jpTd35sR6fm4j1GYyUBPGZc9UYAHjXXCk1eXD9AEPXr3o'
setup_twitter_oauth(api_key, api_secret, access_token, access_token_secret)

load("~/twitter-code/saved_tweets.Rda")

start_date = as.character(Sys.Date() - 2)
end_date = as.character(Sys.Date())
query = 'education+data'

new_search <- searchTwitter(query, n=500, since=start_date, until=end_date)
new_search <- do.call("rbind", lapply(new_search, as.data.frame))
results <- dplyr::union(results, new_search)

# Export data
save(results, file="~/twitter-code/saved_tweets.Rda")
write.csv(results, file='saved_tweets.csv', row.names = FALSE)