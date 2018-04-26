require 'test_helper'

class SaleFlowTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  test "can create a sale" do
    get "/sales/new"
    assert_response :success
   
    post "/sales",
      params: { sale: { code: "PD1", name: "Phone", price: 2000.00, quantity: 3 } }
    assert_response :redirect
    follow_redirect!
    assert_response :success
    assert_select "p", "Code:\n  PD1"
  end
end
