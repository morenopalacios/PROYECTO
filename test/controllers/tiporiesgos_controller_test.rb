require 'test_helper'

class TiporiesgosControllerTest < ActionController::TestCase
  setup do
    @tiporiesgo = tiporiesgos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tiporiesgos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tiporiesgo" do
    assert_difference('Tiporiesgo.count') do
      post :create, tiporiesgo: { nombre: @tiporiesgo.nombre }
    end

    assert_redirected_to tiporiesgo_path(assigns(:tiporiesgo))
  end

  test "should show tiporiesgo" do
    get :show, id: @tiporiesgo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tiporiesgo
    assert_response :success
  end

  test "should update tiporiesgo" do
    patch :update, id: @tiporiesgo, tiporiesgo: { nombre: @tiporiesgo.nombre }
    assert_redirected_to tiporiesgo_path(assigns(:tiporiesgo))
  end

  test "should destroy tiporiesgo" do
    assert_difference('Tiporiesgo.count', -1) do
      delete :destroy, id: @tiporiesgo
    end

    assert_redirected_to tiporiesgos_path
  end
end
