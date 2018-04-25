require 'test_helper'

class ProductCatalogTest < ActiveSupport::TestCase
  test "Product validation should trigger" do
    assert_not Product.new(product_name: "product name",
      quantity: 12, price: 19.00).save
    end

    test "Product should save" do
      assert Product.new(product_code: "PDC1", product_name: "product name",
        quantity: 12, price: 19.00).save
      end
end
