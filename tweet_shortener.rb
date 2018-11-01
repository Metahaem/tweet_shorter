def dictionary
{
  "hello" => 'hi',
"to" => "2",
"two" => "2",
"too" => "2",
"for" => "4",
"For" => "4",
"four" => "4",
"be" => "b",
'you' => 'u',
"at" => "@",
"and" => "&"
}
end

def word_substituter(string)
tweet_array = string.split
tweet_array.map! { |word, i|
if dictionary.has_key?(word)
  word = dictionary[word]
else
  word
  end
}
tweet_array.join(" ")
end

def bulk_tweet_shortener(array)
array.each{ |tweet|
puts word_substituter(tweet)
}
end

def selective_tweet_shortener(string)
if string.length > 140
  return word_substituter(string)
else
  return string
end
end

def shortened_tweet_truncator(string)
new_tweet = selective_tweet_shortener(string)
if new_tweet.length > 140
  return new_tweet[0..136] + "..."
else new_tweet
end
end
