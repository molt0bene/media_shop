class Book < Product
  attr_reader :title, :genre, :author

  def initialize(data_hash)
    super

    @title = data_hash[:title]
    @genre = data_hash[:genre]
    @author = data_hash[:author]
  end

  def self.from_file(filename)
    # reading file
    data = File.new(filename)
    all_lines = data.readlines(chomp: true)
    data.close

    # initializing
    data_hash = {
      title: all_lines[0],
      genre: all_lines[1],
      author: all_lines[2],
      cost: all_lines[3],
      amount: all_lines[4]
    }

    Book.new(data_hash)
  end

  def to_s
    "Книга «#{@title}», #{@genre}, автор — #{@author}, #{@cost} руб. (осталось #{@amount})."
  end
end
