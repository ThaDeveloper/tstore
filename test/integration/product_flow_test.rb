require 'test_helper'

class ProductFlowTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers
  setup do 
    @admin = users(:admin)

  end

  test "can see the products page" do
    get "/"
    assert_select "h3", "Products"
  end
  
  
  test "can create a product" do
    sign_in @admin
    ability = Ability.new(:admin)
    assert ability.can? :create, Product
    get "/products/new"
    assert_response :success
   
    post "/products",
      params: { product: { code: "PD1", name: "Phone", price: 2000.00, stock: 10, discount_price: 2000.00, promotion_opt: false } }
    assert_response :redirect
    follow_redirect!
    assert_response :success
    assert_select "p", "Code: PD1"
  end
end