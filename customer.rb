
class Customer

  attr_reader :name, :age
  attr_accessor :pint_supply, :wallet, :sober

  def initialize(name, wallet, age)
    @name = name
    @wallet = wallet
    @pint_supply = []
    @age = age
    @sober = {
      sobriety: "Sober",
      bac: 0
    }
  end

  def pint_supply()
    return @pint_supply.count()
  end

  def buys_a_drink(pub)
    if age >= 18                    # Simple if statement, to check customer age
      drink = pub.remove_a_drink
      if drink.name == "Guinness"
        @sober[:bac] += 5
      elsif drink.name == "Tennents"
        @sober[:bac] += 3
      elsif drink.name == "Stella Artois"
        @sober[:bac] += 4
      end
      status_update()
      @pint_supply << drink.name
      @wallet -= drink.price
      pub.till_increase(drink.price)
    else
      return "No the night mate."        # If this is written as 'puts', ruby takes the last value of the if statement and gives back nil
    end
  end

  def status_update()
    if @sober[:bac] > 3
      @sober[:sobriety] = "Less sober"
    end
    return @sober[:sobriety]
  end

end
