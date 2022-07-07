class Product
  attr_reader :price, :amount

  def initialize(data_hash)
    @price = data_hash[:price]
    @amount = data_hash[:amount]
  end
end
