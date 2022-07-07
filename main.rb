require_relative 'lib/product'
require_relative 'lib/film'
require_relative 'lib/book'

data_film = {
  cost: 420,
  amount: 3,
  title: "Леон",
  year: "1994",
  producer: "Люк Бессон"
}

leon = Film.new(data_film)
puts leon

data_book = {
  cost: 500,
  amount: 2,
  title: "Преступление и наказание",
  genre: "роман",
  author: "Фёдор Достоевский"
}

book = Book.new(data_book)
puts book
