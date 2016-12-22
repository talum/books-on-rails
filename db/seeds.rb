# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'
require 'json'
require 'pry'

URL = "https://www.googleapis.com/books/v1/volumes?q=subject:fiction&maxResults=40"

response = open(URL).read
books = JSON.parse(response)

books['items'].each do |item|
    book = Book.new
    book.title = item["volumeInfo"]["title"]
    book.description = item["volumeInfo"]["description"]
    author = item['volumeInfo']['authors'].first
    first_name = author.split(" ").first
    last_name = author.split(" ").last
    book.authors << Author.find_or_create_by(
                  first_name: first_name,
                  last_name: last_name)

    book.save
end
