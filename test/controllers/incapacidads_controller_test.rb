require 'test_helper'

class IncapacidadsControllerTest < ActionController::TestCase
  setup do
    @incapacidad = incapacidads(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:incapacidads)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create incapacidad" do
    assert_difference('Incapacidad.count') do
      post :create, incapacidad: { diasacobrar: @incapacidad.diasacobrar, esp: @incapacidad.esp, fechainicio: @incapacidad.fechainicio, fechaterminacion: @incapacidad.fechaterminacion, funcionario_id: @incapacidad.funcionario_id, numeroinpacacidad: @incapacidad.numeroinpacacidad, origendelaincapacidad: @incapacidad.origendelaincapacidad, prorroga: @incapacidad.prorroga, totaldias: @incapacidad.totaldias }
    end

    assert_redirected_to incapacidad_path(assigns(:incapacidad))
  end

  test "should show incapacidad" do
    get :show, id: @incapacidad
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @incapacidad
    assert_response :success
  end

  test "should update incapacidad" do
    patch :update, id: @incapacidad, incapacidad: { diasacobrar: @incapacidad.diasacobrar, esp: @incapacidad.esp, fechainicio: @incapacidad.fechainicio, fechaterminacion: @incapacidad.fechaterminacion, funcionario_id: @incapacidad.funcionario_id, numeroinpacacidad: @incapacidad.numeroinpacacidad, origendelaincapacidad: @incapacidad.origendelaincapacidad, prorroga: @incapacidad.prorroga, totaldias: @incapacidad.totaldias }
    assert_redirected_to incapacidad_path(assigns(:incapacidad))
  end

  test "should destroy incapacidad" do
    assert_difference('Incapacidad.count', -1) do
      delete :destroy, id: @incapacidad
    end

    assert_redirected_to incapacidads_path
  end
end
