
class Customer

  attr_reader :name, :wallet
  attr_accessor :pint_supply

  def initialize(name, wallet)
    @name = name
    @wallet = wallet
    @pint_supply = []
  end

  def pint_supply()
    return @pint_supply.count()
  end

  def buys_a_drink(pub)
    drink = pub.remove_a_drink
    @pint_supply << drink.name
    @wallet -= drink.price
    pub.till_increase(drink.price)
  end

end
