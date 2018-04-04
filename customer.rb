
class Customer

  attr_reader :name, :age
  attr_accessor :pint_supply, :wallet

  def initialize(name, wallet, age)
    @name = name
    @wallet = wallet
    @pint_supply = []
    @age = age
  end

  def pint_supply()
    return @pint_supply.count()
  end

  def buys_a_drink(pub)
    if age >= 18                    # Simple if statement, to check customer age
      drink = pub.remove_a_drink
      @pint_supply << drink.name
      @wallet -= drink.price
      pub.till_increase(drink.price)
    else
      p "No the night mate."        # If this is written as 'puts', ruby takes the last value of the if statement and gives back nil
    end
  end

end
