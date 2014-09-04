require 'test_helper'

class TipoincidentesControllerTest < ActionController::TestCase
  setup do
    @tipoincidente = tipoincidentes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tipoincidentes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tipoincidente" do
    assert_difference('Tipoincidente.count') do
      post :create, tipoincidente: { nombre: @tipoincidente.nombre }
    end

    assert_redirected_to tipoincidente_path(assigns(:tipoincidente))
  end

  test "should show tipoincidente" do
    get :show, id: @tipoincidente
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tipoincidente
    assert_response :success
  end

  test "should update tipoincidente" do
    patch :update, id: @tipoincidente, tipoincidente: { nombre: @tipoincidente.nombre }
    assert_redirected_to tipoincidente_path(assigns(:tipoincidente))
  end

  test "should destroy tipoincidente" do
    assert_difference('Tipoincidente.count', -1) do
      delete :destroy, id: @tipoincidente
    end

    assert_redirected_to tipoincidentes_path
  end
end
