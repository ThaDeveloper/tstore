require 'test_helper'

class SaleTest < ActiveSupport::TestCase
   test "Sale validation should trigger" do
    assert_not Sale.new(name: "product name",
      quantity: 12, price: 19.00).save
    end

    test "Sale should save" do
      assert Sale.new(code: "PDC1", name: "name",
        quantity: 12, price: 19.00).save
    end
end
