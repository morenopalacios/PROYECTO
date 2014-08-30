require 'test_helper'

class PersonalinvolucradosControllerTest < ActionController::TestCase
  setup do
    @personalinvolucrado = personalinvolucrados(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:personalinvolucrados)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create personalinvolucrado" do
    assert_difference('Personalinvolucrado.count') do
      post :create, personalinvolucrado: { nombre: @personalinvolucrado.nombre }
    end

    assert_redirected_to personalinvolucrado_path(assigns(:personalinvolucrado))
  end

  test "should show personalinvolucrado" do
    get :show, id: @personalinvolucrado
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @personalinvolucrado
    assert_response :success
  end

  test "should update personalinvolucrado" do
    patch :update, id: @personalinvolucrado, personalinvolucrado: { nombre: @personalinvolucrado.nombre }
    assert_redirected_to personalinvolucrado_path(assigns(:personalinvolucrado))
  end

  test "should destroy personalinvolucrado" do
    assert_difference('Personalinvolucrado.count', -1) do
      delete :destroy, id: @personalinvolucrado
    end

    assert_redirected_to personalinvolucrados_path
  end
end
