class Film < Product
  attr_reader :title, :year, :producer

  def initialize(data_hash)
    super

    @title = data_hash[:title]
    @year = data_hash[:year]
    @producer = data_hash[:producer]
  end

  def self.from_file(filename)
    # reading file
    data = File.new(filename)
    all_lines = data.readlines(chomp: true)
    data.close

    # initializing
    data_hash = {
      title: all_lines[0],
      producer: all_lines[1],
      year: all_lines[2],
      cost: all_lines[3],
      amount: all_lines[4]
    }

    Film.new(data_hash)
  end

  def to_s
    "Фильм «#{@title}», #{@year}, реж. #{@producer}, #{@cost} руб. (осталось #{@amount})."
  end
end
