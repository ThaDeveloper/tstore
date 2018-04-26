require 'test_helper'

class ProductFlowTest < ActionDispatch::IntegrationTest
   test "can see the products page" do
    get "/"
    assert_select "h1", "Products"
  end
  
  
  test "can create a product" do
    get "/products/new"
    assert_response :success
   
    post "/products",
      params: { product: { code: "PD1", name: "Phone", price: 2000.00, quantity: 10 } }
    assert_response :redirect
    follow_redirect!
    assert_response :success
    assert_select "p", "Code:\n  PD1"
  end
end
