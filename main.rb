require_relative 'lib/product'
require_relative 'lib/film'
require_relative 'lib/book'

leon = Film.new(420, 3)

puts "Фильм Леон стоит #{leon.price} руб."
