require("minitest/autorun")
require_relative("../customer.rb")
require_relative("../pub.rb")
require_relative("../drink.rb")


class CustomerTest < MiniTest::Test

  def setup
    @customer1 = Customer.new("Lyle", 10, 30)
    @customer2 = Customer.new("Andrew", 10, 17)
    drink1 = Drink.new("Guinness", 4, 5)
    drink2 = Drink.new("Tennents", 3, 3)
    drink3 = Drink.new("Stella Artois", 5, 4)
    @drinks = [drink1, drink2, drink3]
    @pub = Pub.new("The Swan & Pedo", 500, @drinks)
  end

  def test_customer_name
    assert_equal("Lyle", @customer1.name)
  end

  def test_wallet_amount
      assert_equal(10, @customer1.wallet)
  end

  def test_buy_drink_from_pub()
    @customer.buys_a_drink(@pub)
    assert_equal(1, @customer.pint_supply())            #Proof of customer gaining pint
    assert_equal(5, @customer.wallet)                   #Proof of wallet decreasing
    assert_equal(505, @pub.till)                        #Proof of till increasing
    assert_equal(2, @pub.stock_count)                   #Proof of drinks decreasing
    assert_equal("Less sober", @customer.status_update) #Proof of drinks decreasing sobriety level
  end

  def test_age_check
    assert_equal("No the night mate.", @customer2.buys_a_drink(@pub)) # Proof of customer age check in place
  end

  def test_customer_sobriety()
    assert_equal("Sober", @customer.status_update)
  end

end
