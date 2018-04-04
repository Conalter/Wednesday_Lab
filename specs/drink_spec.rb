require("minitest/autorun")
require_relative("../drink.rb")

class DrinkTest < MiniTest::Test

  def setup
    @drink1 = Drink.new("Guinness", 4)
    @drink2 = Drink.new("Tennents", 3)
  end

  def test_drink_brand()
    drink_name = @drink1.name
    assert_equal("Guinness", drink_name)
  end

end
