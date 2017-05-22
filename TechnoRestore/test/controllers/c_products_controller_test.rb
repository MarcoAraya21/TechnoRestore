require 'test_helper'

class CProductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @c_product = c_products(:one)
  end

  test "should get index" do
    get c_products_url
    assert_response :success
  end

  test "should get new" do
    get new_c_product_url
    assert_response :success
  end

  test "should create c_product" do
    assert_difference('CProduct.count') do
      post c_products_url, params: { c_product: { Descripcion: @c_product.Descripcion, Marca: @c_product.Marca, Nombre: @c_product.Nombre, cstatus_id: @c_product.cstatus_id, ptype_id: @c_product.ptype_id, user_id: @c_product.user_id } }
    end

    assert_redirected_to c_product_url(CProduct.last)
  end

  test "should show c_product" do
    get c_product_url(@c_product)
    assert_response :success
  end

  test "should get edit" do
    get edit_c_product_url(@c_product)
    assert_response :success
  end

  test "should update c_product" do
    patch c_product_url(@c_product), params: { c_product: { Descripcion: @c_product.Descripcion, Marca: @c_product.Marca, Nombre: @c_product.Nombre, cstatus_id: @c_product.cstatus_id, ptype_id: @c_product.ptype_id, user_id: @c_product.user_id } }
    assert_redirected_to c_product_url(@c_product)
  end

  test "should destroy c_product" do
    assert_difference('CProduct.count', -1) do
      delete c_product_url(@c_product)
    end

    assert_redirected_to c_products_url
  end
end
