require 'test_helper'

class TipoincapacidadsControllerTest < ActionController::TestCase
  setup do
    @tipoincapacidad = tipoincapacidads(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tipoincapacidads)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tipoincapacidad" do
    assert_difference('Tipoincapacidad.count') do
      post :create, tipoincapacidad: { nombre: @tipoincapacidad.nombre }
    end

    assert_redirected_to tipoincapacidad_path(assigns(:tipoincapacidad))
  end

  test "should show tipoincapacidad" do
    get :show, id: @tipoincapacidad
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tipoincapacidad
    assert_response :success
  end

  test "should update tipoincapacidad" do
    patch :update, id: @tipoincapacidad, tipoincapacidad: { nombre: @tipoincapacidad.nombre }
    assert_redirected_to tipoincapacidad_path(assigns(:tipoincapacidad))
  end

  test "should destroy tipoincapacidad" do
    assert_difference('Tipoincapacidad.count', -1) do
      delete :destroy, id: @tipoincapacidad
    end

    assert_redirected_to tipoincapacidads_path
  end
end
