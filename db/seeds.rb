require 'json'
require 'open-uri'

Movie.destroy_all

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
url = 'https://api.themoviedb.org/3/movie/top_rated?api_key=0b63f9ceebc9ee012861af80b71888ae'
user_serialized = URI.open(url).read # this is a string
user = JSON.parse(user_serialized) # user is a json file

user['results'].each do |movie|
  Movie.create!(title: movie['original_title'], overview: movie['overview'])
end

# use Faker to generate lists
