require 'test_helper'

class TiponovedadsControllerTest < ActionController::TestCase
  setup do
    @tiponovedad = tiponovedads(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tiponovedads)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tiponovedad" do
    assert_difference('Tiponovedad.count') do
      post :create, tiponovedad: { nombre: @tiponovedad.nombre }
    end

    assert_redirected_to tiponovedad_path(assigns(:tiponovedad))
  end

  test "should show tiponovedad" do
    get :show, id: @tiponovedad
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tiponovedad
    assert_response :success
  end

  test "should update tiponovedad" do
    patch :update, id: @tiponovedad, tiponovedad: { nombre: @tiponovedad.nombre }
    assert_redirected_to tiponovedad_path(assigns(:tiponovedad))
  end

  test "should destroy tiponovedad" do
    assert_difference('Tiponovedad.count', -1) do
      delete :destroy, id: @tiponovedad
    end

    assert_redirected_to tiponovedads_path
  end
end
