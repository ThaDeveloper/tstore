require 'test_helper'

class ProductCatalogsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @product_catalog = product_catalogs(:one)
  end

  test "should get index" do
    get product_catalogs_url
    assert_response :success
  end

  test "should get new" do
    get new_product_catalog_url
    assert_response :success
  end

  test "should create product_catalog" do
    assert_difference('ProductCatalog.count') do
      post product_catalogs_url, params: { product_catalog: { price: @product_catalog.price, product_code: @product_catalog.product_code, product_name: @product_catalog.product_name, quantities: @product_catalog.quantities } }
    end

    assert_redirected_to product_catalog_url(ProductCatalog.last)
  end

  test "should show product_catalog" do
    get product_catalog_url(@product_catalog)
    assert_response :success
  end

  test "should get edit" do
    get edit_product_catalog_url(@product_catalog)
    assert_response :success
  end

  test "should update product_catalog" do
    patch product_catalog_url(@product_catalog), params: { product_catalog: { price: @product_catalog.price, product_code: @product_catalog.product_code, product_name: @product_catalog.product_name, quantities: @product_catalog.quantities } }
    assert_redirected_to product_catalog_url(@product_catalog)
  end

  test "should destroy product_catalog" do
    assert_difference('ProductCatalog.count', -1) do
      delete product_catalog_url(@product_catalog)
    end

    assert_redirected_to product_catalogs_url
  end
end
