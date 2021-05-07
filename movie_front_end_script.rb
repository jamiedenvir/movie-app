require "http"

system "clear"

puts "Welcome to the Movies App!"

response = HTTP.get("localhost:3000/all_movies")

movies = response.parse

pp movies