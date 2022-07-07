class Book < Product
  attr_reader :title, :genre, :author

  def initialize(data_hash)
    super

    @title = data_hash[:title]
    @genre = data_hash[:genre]
    @author = data_hash[:author]
  end

  def to_s
    "Книга «#{title}», #{genre}, автор — #{author}, #{price} руб. (осталось #{amount})."
  end
end
