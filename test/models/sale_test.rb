require 'test_helper'

class SaleTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "Sale validation should trigger" do
    assert_not Sale.new(total: 1500).save
  end

  test "Sale should save" do
      assert Sale.new(code: "123", total: 15.00).save
  end
end
