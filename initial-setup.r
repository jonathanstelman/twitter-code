library(ROAuth)
library(twitteR)

api_key <- 'xfweW6pW0xotKQzfkocM7xj0p'
api_secret <-'VquI5RIJ5LgBUI5EeBgtYyBgn5QsejxIcr4XrCRk0HhzC51lu1'
access_token <- '799339669527953408-rmOnUIlw7uy17CXHw0sXwhJg85oi5we'
access_token_secret <- 'jpTd35sR6fm4j1GYyUBPGZc9UYAHjXXCk1eXD9AEPXr3o'
setup_twitter_oauth(api_key, api_secret, access_token, access_token_secret)

start_date = as.character(Sys.Date() - 7)
end_date = as.character(Sys.Date())
query = 'education+data'

#Download Tweets
results <- searchTwitter(query, n=100, since=start_date, until=end_date)
results <- do.call("rbind", lapply(results, as.data.frame))