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

book_from_file = Book.from_file('./data/books/gore_ot_uma.txt')
puts book_from_file

film_from_file = Film.from_file('./data/films/back_to_future.txt')
puts film_from_file
