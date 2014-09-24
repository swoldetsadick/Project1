if (VERBOSE)
        print("Searching Twitter for airline tweets and saving to disk")

require(twitteR)

american.tweets = searchTwitter('@SFR', n=1500)
save(american.tweets, file=file.path(dataDir, 'american.tweets.RData' ), ascii=T)

delta.tweets = searchTwitter('@FREE', n=1500)
save(delta.tweets, file=file.path(dataDir, 'delta.tweets.RData' ), ascii=T)

jetblue.tweets = searchTwitter('@ORANGE', n=1500)
save(jetblue.tweets, file=file.path(dataDir, 'jetblue.tweets.RData' ), ascii=T)

southwest.tweets = searchTwitter('@Bouygues', n=1500)
save(southwest.tweets, file=file.path(dataDir, 'southwest.tweets.RData' ), ascii=T)