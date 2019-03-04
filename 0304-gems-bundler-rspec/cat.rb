require "http"
require "json"

response = HTTP.get("https://cat-fact.herokuapp.com/facts/random")

cat = JSON.parse(response)

