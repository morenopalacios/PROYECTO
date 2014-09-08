require 'test_helper'

class TipoaccidentesControllerTest < ActionController::TestCase
  setup do
    @tipoaccidente = tipoaccidentes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tipoaccidentes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tipoaccidente" do
    assert_difference('Tipoaccidente.count') do
      post :create, tipoaccidente: { nombre: @tipoaccidente.nombre }
    end

    assert_redirected_to tipoaccidente_path(assigns(:tipoaccidente))
  end

  test "should show tipoaccidente" do
    get :show, id: @tipoaccidente
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tipoaccidente
    assert_response :success
  end

  test "should update tipoaccidente" do
    patch :update, id: @tipoaccidente, tipoaccidente: { nombre: @tipoaccidente.nombre }
    assert_redirected_to tipoaccidente_path(assigns(:tipoaccidente))
  end

  test "should destroy tipoaccidente" do
    assert_difference('Tipoaccidente.count', -1) do
      delete :destroy, id: @tipoaccidente
    end

    assert_redirected_to tipoaccidentes_path
  end
end
