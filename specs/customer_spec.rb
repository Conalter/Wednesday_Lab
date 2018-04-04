require("minitest/autorun")
require_relative("../customer.rb")
require_relative("../pub.rb")
require_relative("../drink.rb")


class CustomerTest < MiniTest::Test

  def setup
    @customer = Customer.new("Lyle", 10)
    drink1 = Drink.new("Guinness", 4)
    drink2 = Drink.new("Tennents", 3)
    drink3 = Drink.new("Stella Artois", 5)
    @drinks = [drink1, drink2, drink3]
    @pub = Pub.new("The Swan & Pedo", 500, @drinks)
  end

  def test_customer_name
    assert_equal("Lyle", @customer.name)
  end

  def test_wallet_amount
      assert_equal(10, @customer.wallet)
  end

  def test_buy_drink_from_pub()
    @customer.buys_a_drink(@pub)
    assert_equal(1, @customer.pint_supply())  #Proof of customer gaining pint
    assert_equal(5, @customer.wallet)         #Proof of wallet decreasing
    assert_equal(505, @pub.till)              #Proof of till increasing
    assert_equal(2, @pub.stock_count)         #Proof of drinks decreasing
  end

end
