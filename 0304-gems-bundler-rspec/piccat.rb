require "http"
require "json"

#Get data from two APIs and use them to create a single message on the CLI. 
#By example, you could get a random fact about cats and link me to a picture of a cat.
c1= HTTP.get("https://cat-fact.herokuapp.com/facts/random/")
c2=HTTP.get("https://aws.random.cat/meow")
puts "Curiosidad acerca de los gatos : " + JSON.parse(c1.to_s)["text"]
puts "Image link " + JSON.parse(c2.to_s)["file"] #cuando no es string sale error


#texto= HTTP.get('https://cat-fact.herokuapp.com/facts').to_s
#image=HTTP.get("https://aws.random.cat/meow")
