require 'test_helper'

class TipodocsControllerTest < ActionController::TestCase
  setup do
    @tipodoc = tipodocs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tipodocs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tipodoc" do
    assert_difference('Tipodoc.count') do
      post :create, tipodoc: { nombre: @tipodoc.nombre }
    end

    assert_redirected_to tipodoc_path(assigns(:tipodoc))
  end

  test "should show tipodoc" do
    get :show, id: @tipodoc
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tipodoc
    assert_response :success
  end

  test "should update tipodoc" do
    patch :update, id: @tipodoc, tipodoc: { nombre: @tipodoc.nombre }
    assert_redirected_to tipodoc_path(assigns(:tipodoc))
  end

  test "should destroy tipodoc" do
    assert_difference('Tipodoc.count', -1) do
      delete :destroy, id: @tipodoc
    end

    assert_redirected_to tipodocs_path
  end
end
