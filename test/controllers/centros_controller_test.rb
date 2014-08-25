require 'test_helper'

class CentrosControllerTest < ActionController::TestCase
  setup do
    @centro = centros(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:centros)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create centro" do
    assert_difference('Centro.count') do
      post :create, centro: { nombre: @centro.nombre }
    end

    assert_redirected_to centro_path(assigns(:centro))
  end

  test "should show centro" do
    get :show, id: @centro
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @centro
    assert_response :success
  end

  test "should update centro" do
    patch :update, id: @centro, centro: { nombre: @centro.nombre }
    assert_redirected_to centro_path(assigns(:centro))
  end

  test "should destroy centro" do
    assert_difference('Centro.count', -1) do
      delete :destroy, id: @centro
    end

    assert_redirected_to centros_path
  end
end
