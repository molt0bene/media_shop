class Film < Product
  attr_reader :title, :year, :producer

  def initialize(data_hash)
    super

    @title = data_hash[:title]
    @year = data_hash[:year]
    @producer = data_hash[:producer]
  end

  def to_s
    "Фильм «#{title}», #{year}, реж. #{producer}, #{price} руб. (осталось #{amount})."
  end
end
