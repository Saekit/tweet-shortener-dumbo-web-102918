def word_substituter(tweet)
  dictionary = {
    "hello" => "hi",
    "to" => 2,
    "two" => 2,
    "too" => 2,
    "for" => 4,
    "four" => 4,
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
  
  tweet.split(" ").map do |word|
    if dictionary.keys.include?(word.downcase)
      word = dictionary[word.downcase]
    else
      word
    end
  end.join(" ")
end

def bulk_tweet_shortener(tweet)
  tweet.map do |words|
    puts word_substituter(words)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length < 140
    tweet
  else
    word_substituter(tweet)
  end
end



