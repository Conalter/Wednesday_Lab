require("minitest/autorun")
require_relative("../pub.rb")
require_relative("../drink.rb")

class PubTest < MiniTest::Test

    def setup
      # drink = [
              # {name: "Guinness", price: 4},
              #   {name: "Tennents", price: 3},
              #     {name: "Stella Artois", price: 5}
              #   ]
      drink1 = Drink.new("Guinness", 4)
      drink2 = Drink.new("Tennents", 3)
      drink3 = Drink.new("Stella Artois", 5)
      @drinks = [drink1, drink2, drink3]
      @pub = Pub.new("The Swan & Pedo", 500, @drinks)
    end

    def test_pub_name()
      assert_equal("The Swan & Pedo", @pub.name)
    end

    def test_till_value()
      assert_equal(500, @pub.till)
    end

    def test_till_value__increase()
      assert_equal(550, @pub.till_increase(50))
    end

    def test_drink__name()
      assert_equal(["Guinness", "Tennents", "Stella Artois"], @pub.drinks_name)
    end

    def test_drink__price()
      assert_equal([4,3,5], @pub.drinks_cost)
    end

    def test_remove_a_drink()
      @pub.remove_a_drink()
      assert_equal(2, @drinks.count())
    end

end
