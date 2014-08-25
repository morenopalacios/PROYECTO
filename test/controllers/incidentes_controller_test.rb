require 'test_helper'

class IncidentesControllerTest < ActionController::TestCase
  setup do
    @incidente = incidentes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:incidentes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create incidente" do
    assert_difference('Incidente.count') do
      post :create, incidente: { area_o_proceso: @incidente.area_o_proceso, centro_id: @incidente.centro_id, descripcion_del_evento: @incidente.descripcion_del_evento, email1: @incidente.email1, email2: @incidente.email2, especifique: @incidente.especifique, fecha_del_reporte: @incidente.fecha_del_reporte, funcionario_id: @incidente.funcionario_id, hora_del_reporte: @incidente.hora_del_reporte, lugar_de_ocurrencia: @incidente.lugar_de_ocurrencia, nombre_completo1: @incidente.nombre_completo1, nombre_completo2: @incidente.nombre_completo2, nombre_de_lider_de_informe: @incidente.nombre_de_lider_de_informe, nombre_del_dilenciador: @incidente.nombre_del_dilenciador, otro: @incidente.otro, personalinvolucrado_id: @incidente.personalinvolucrado_id, telefono1: @incidente.telefono1, telefono2: @incidente.telefono2 }
    end

    assert_redirected_to incidente_path(assigns(:incidente))
  end

  test "should show incidente" do
    get :show, id: @incidente
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @incidente
    assert_response :success
  end

  test "should update incidente" do
    patch :update, id: @incidente, incidente: { area_o_proceso: @incidente.area_o_proceso, centro_id: @incidente.centro_id, descripcion_del_evento: @incidente.descripcion_del_evento, email1: @incidente.email1, email2: @incidente.email2, especifique: @incidente.especifique, fecha_del_reporte: @incidente.fecha_del_reporte, funcionario_id: @incidente.funcionario_id, hora_del_reporte: @incidente.hora_del_reporte, lugar_de_ocurrencia: @incidente.lugar_de_ocurrencia, nombre_completo1: @incidente.nombre_completo1, nombre_completo2: @incidente.nombre_completo2, nombre_de_lider_de_informe: @incidente.nombre_de_lider_de_informe, nombre_del_dilenciador: @incidente.nombre_del_dilenciador, otro: @incidente.otro, personalinvolucrado_id: @incidente.personalinvolucrado_id, telefono1: @incidente.telefono1, telefono2: @incidente.telefono2 }
    assert_redirected_to incidente_path(assigns(:incidente))
  end

  test "should destroy incidente" do
    assert_difference('Incidente.count', -1) do
      delete :destroy, id: @incidente
    end

    assert_redirected_to incidentes_path
  end
end
