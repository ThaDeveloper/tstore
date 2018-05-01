require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "Product validation should trigger" do
    assert_not Product.new(name: "product name",
      quantity: 12, price: 19.00,stock: 1, discount_price:19.00, promotion_opt: false).save
    end

  test "Product should save" do
      assert Product.new(code: "PDC1", name: "name",
        quantity: 12, price: 19.00,stock: 1, discount_price:19.00, promotion_opt: false).save
  end
end
