require 'test_helper'

class GaleriaControllerTest < ActionController::TestCase
  setup do
    @galerium = galeria(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:galeria)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create galerium" do
    assert_difference('Galerium.count') do
      post :create, galerium: { recomendacion: @galerium.recomendacion }
    end

    assert_redirected_to galerium_path(assigns(:galerium))
  end

  test "should show galerium" do
    get :show, id: @galerium
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @galerium
    assert_response :success
  end

  test "should update galerium" do
    patch :update, id: @galerium, galerium: { recomendacion: @galerium.recomendacion }
    assert_redirected_to galerium_path(assigns(:galerium))
  end

  test "should destroy galerium" do
    assert_difference('Galerium.count', -1) do
      delete :destroy, id: @galerium
    end

    assert_redirected_to galeria_path
  end
end
