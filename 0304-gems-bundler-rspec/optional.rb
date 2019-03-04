# Los gatos mas raros!
require "http"
require "json"

responseName = HTTP.get("http://taco-randomizer.herokuapp.com/random/?full-taco=true")
responsePhoto = HTTP.get("https://aws.random.cat/meow")
responseDescription = HTTP.get("https://cat-fact.herokuapp.com/facts/random")

catPhoto = JSON.parse(responsePhoto)
catName = JSON.parse(responseName)
catDescription = JSON.parse(responseDescription)

puts "Name Cat: #{catName["name"]}"
puts "-------------"
puts "Photo: #{catPhoto["file"]}"
puts "Description: #{catDescription["text"]}"
