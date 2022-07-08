class Product
  attr_reader :cost, :amount

  def initialize(data_hash)
    @cost = data_hash[:cost]
    @amount = data_hash[:amount]
  end

  def self.from_file(filename)
    raise NotImplementedError
  end
end
