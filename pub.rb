
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
      result = result + [drink[:name]]
    end
    return result
  end

  def drinks_cost
    result = []
    for price in @drinks
      result = result << price[:price]
    end
    return result
  end

  def till_increase(cash)
    return @till + cash
  end

end
