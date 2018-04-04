require("minitest/autorun")
require_relative("../pub.rb")

class PubTest < MiniTest::Test

    def setup
      drink = [
              {name: "Guinness", price: 4},
                {name: "Tennents", price: 3},
                  {name: "Stella Artois", price: 5}
                ]
      @pub = Pub.new("The Swan & Pedo", 500, drink)
    end

    def test_pub_name()
      assert_equal("The Swan & Pedo", @pub.name)
    end

    def test_till_value()
      assert_equal(500, @pub.till)
    end

    def test_drink_all_info()
      drink = {name: "Guinness", price: 4}
      assert_equal(drink, @pub.drinks[0])
    end

    def test_drink__name()
      assert_equal(["Guinness", "Tennents", "Stella Artois"], @pub.drinks_name)
    end

    def test_drink__price()
      assert_equal([4,3,5], @pub.drinks_cost)
    end

end
