require "http"
require "json"

responseCat = HTTP.get("https://cat-fact.herokuapp.com/facts/random")
cat = JSON.parse(responseCat)

responsePhoto = HTTP.get("https://aws.random.cat/meow")
photo = JSON.parse(responsePhoto)

puts photo["file"]
puts cat["text"]