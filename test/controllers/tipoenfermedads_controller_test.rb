require 'test_helper'

class TipoenfermedadsControllerTest < ActionController::TestCase
  setup do
    @tipoenfermedad = tipoenfermedads(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tipoenfermedads)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tipoenfermedad" do
    assert_difference('Tipoenfermedad.count') do
      post :create, tipoenfermedad: { nombre: @tipoenfermedad.nombre }
    end

    assert_redirected_to tipoenfermedad_path(assigns(:tipoenfermedad))
  end

  test "should show tipoenfermedad" do
    get :show, id: @tipoenfermedad
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tipoenfermedad
    assert_response :success
  end

  test "should update tipoenfermedad" do
    patch :update, id: @tipoenfermedad, tipoenfermedad: { nombre: @tipoenfermedad.nombre }
    assert_redirected_to tipoenfermedad_path(assigns(:tipoenfermedad))
  end

  test "should destroy tipoenfermedad" do
    assert_difference('Tipoenfermedad.count', -1) do
      delete :destroy, id: @tipoenfermedad
    end

    assert_redirected_to tipoenfermedads_path
  end
end
