require 'test_helper'

class ProductsControllerTest < ActionController::TestCase
  setup do
    @product = products(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:products)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create product" do
    assert_difference('Product.count') do
      post :create, product: { active: @product.active, amount: @product.amount, code: @product.code, data: @product.data, description: @product.description, marck: @product.marck, modelo: @product.modelo, name: @product.name, provider_id: @product.provider_id, purchase_value: @product.purchase_value, sale_value: @product.sale_value }
    end

    assert_redirected_to product_path(assigns(:product))
  end

  test "should show product" do
    get :show, id: @product
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @product
    assert_response :success
  end

  test "should update product" do
    patch :update, id: @product, product: { active: @product.active, amount: @product.amount, code: @product.code, data: @product.data, description: @product.description, marck: @product.marck, modelo: @product.modelo, name: @product.name, provider_id: @product.provider_id, purchase_value: @product.purchase_value, sale_value: @product.sale_value }
    assert_redirected_to product_path(assigns(:product))
  end

  test "should destroy product" do
    assert_difference('Product.count', -1) do
      delete :destroy, id: @product
    end

    assert_redirected_to products_path
  end
end
