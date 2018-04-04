
class Pub

  attr_reader :name, :till, :drinks

  def initialize(name, till, drinks)
    @name = name
    @till = till
    @drinks = drinks
  end

  def drinks_name()
    result = []
    for drink in @drinks
      result = result << drink.name
    end
    p @drinks
    return result
  end

  def drinks_cost
    result = []
    for drink in @drinks
      result = result << drink.price
    end
    return result
  end

  def till_increase(cash)
    @till += cash
  end

  def remove_a_drink()
    @drinks.pop()
  end

  def stock_count()
    return @drinks.count()
  end


end
