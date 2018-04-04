require("minitest/autorun")
require_relative("../customer.rb")

class CustomerTest < MiniTest::Test

  def setup
    @customer = Customer.new("Lyle", 10)
  end

  def test_customer_name
    assert_equal("Lyle", @customer.name)
  end

  def test_wallet_amount
      assert_equal(10, @customer.wallet)
  end
end
