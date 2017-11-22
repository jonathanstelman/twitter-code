# Execute scheduled search
start_date = as.character(Sys.Date() - 2)
end_date = as.character(Sys.Date())

new_search <- searchTwitter(query, n=100, since=start_date, until=end_date)
new_search <- do.call("rbind", lapply(new_search, as.data.frame))
results <- dplyr::union(results, new_search)