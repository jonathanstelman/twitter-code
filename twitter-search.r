# Run scheduled search
new_search_df <- searchTwitter(query, n=0, since='2017-11-15', until='2017-11-21')
TL <- bind_rows(TL, new_search_df)