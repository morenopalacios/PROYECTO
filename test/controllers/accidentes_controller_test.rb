require 'test_helper'

class AccidentesControllerTest < ActionController::TestCase
  setup do
    @accidente = accidentes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:accidentes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create accidente" do
    assert_difference('Accidente.count') do
      post :create, accidente: { actividad_economica_centro_trabajo: @accidente.actividad_economica_centro_trabajo, actividad_economica_sede_principal: @accidente.actividad_economica_sede_principal, afp: @accidente.afp, agente_del_accidente: @accidente.agente_del_accidente, arl: @accidente.arl, codigo: @accidente.codigo, departamento1: @accidente.departamento1, departamento2: @accidente.departamento2, departamento_id: @accidente.departamento_id, descripcion_del_at: @accidente.descripcion_del_at, dia_de_la_semana: @accidente.dia_de_la_semana, diligenciador: @accidente.diligenciador, direccion_centro_trabajo: @accidente.direccion_centro_trabajo, direccion_reportada: @accidente.direccion_reportada, direccion_sede_principal: @accidente.direccion_sede_principal, documento1: @accidente.documento1, documento2: @accidente.documento2, documento3: @accidente.documento3, documento: @accidente.documento, email_ct: @accidente.email_ct, email_sede_principal: @accidente.email_sede_principal, eps: @accidente.eps, fax_ct: @accidente.fax_ct, fax_sede_principal: @accidente.fax_sede_principal, fecha_del_accidente: @accidente.fecha_del_accidente, fecha_mortal: @accidente.fecha_mortal, funcionario_id: @accidente.funcionario_id, hora_del_accidente: @accidente.hora_del_accidente, hubo_personas_que_presenciaron_el_accidente: @accidente.hubo_personas_que_presenciaron_el_accidente, jornada_en_que_sucede: @accidente.jornada_en_que_sucede, lugar_donde_ocurrio_el_at: @accidente.lugar_donde_ocurrio_el_at, mecanismo_o_formato_del_at: @accidente.mecanismo_o_formato_del_at, mortal: @accidente.mortal, municipio1: @accidente.municipio1, municipio2: @accidente.municipio2, municipio_id: @accidente.municipio_id, ocupacion_no_habitual: @accidente.ocupacion_no_habitual, parte_del_cuerpo_afectado: @accidente.parte_del_cuerpo_afectado, razon_social: @accidente.razon_social, realiza_su_labor: @accidente.realiza_su_labor, responsable_informe: @accidente.responsable_informe, sitio: @accidente.sitio, telefono_ct: @accidente.telefono_ct, telefono_reportado: @accidente.telefono_reportado, telefono_sede_principal: @accidente.telefono_sede_principal, testigo1: @accidente.testigo1, testigo2: @accidente.testigo2, tiempo_laborado: @accidente.tiempo_laborado, tipo_de_accidente: @accidente.tipo_de_accidente, tipo_de_lesion: @accidente.tipo_de_lesion, tipo_de_vinculacion: @accidente.tipo_de_vinculacion, tipodoc1: @accidente.tipodoc1, tipodoc2: @accidente.tipodoc2, tipodoc3: @accidente.tipodoc3, tipodoc_id: @accidente.tipodoc_id, zona1: @accidente.zona1, zona2: @accidente.zona2, zona: @accidente.zona }
    end

    assert_redirected_to accidente_path(assigns(:accidente))
  end

  test "should show accidente" do
    get :show, id: @accidente
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @accidente
    assert_response :success
  end

  test "should update accidente" do
    patch :update, id: @accidente, accidente: { actividad_economica_centro_trabajo: @accidente.actividad_economica_centro_trabajo, actividad_economica_sede_principal: @accidente.actividad_economica_sede_principal, afp: @accidente.afp, agente_del_accidente: @accidente.agente_del_accidente, arl: @accidente.arl, codigo: @accidente.codigo, departamento1: @accidente.departamento1, departamento2: @accidente.departamento2, departamento_id: @accidente.departamento_id, descripcion_del_at: @accidente.descripcion_del_at, dia_de_la_semana: @accidente.dia_de_la_semana, diligenciador: @accidente.diligenciador, direccion_centro_trabajo: @accidente.direccion_centro_trabajo, direccion_reportada: @accidente.direccion_reportada, direccion_sede_principal: @accidente.direccion_sede_principal, documento1: @accidente.documento1, documento2: @accidente.documento2, documento3: @accidente.documento3, documento: @accidente.documento, email_ct: @accidente.email_ct, email_sede_principal: @accidente.email_sede_principal, eps: @accidente.eps, fax_ct: @accidente.fax_ct, fax_sede_principal: @accidente.fax_sede_principal, fecha_del_accidente: @accidente.fecha_del_accidente, fecha_mortal: @accidente.fecha_mortal, funcionario_id: @accidente.funcionario_id, hora_del_accidente: @accidente.hora_del_accidente, hubo_personas_que_presenciaron_el_accidente: @accidente.hubo_personas_que_presenciaron_el_accidente, jornada_en_que_sucede: @accidente.jornada_en_que_sucede, lugar_donde_ocurrio_el_at: @accidente.lugar_donde_ocurrio_el_at, mecanismo_o_formato_del_at: @accidente.mecanismo_o_formato_del_at, mortal: @accidente.mortal, municipio1: @accidente.municipio1, municipio2: @accidente.municipio2, municipio_id: @accidente.municipio_id, ocupacion_no_habitual: @accidente.ocupacion_no_habitual, parte_del_cuerpo_afectado: @accidente.parte_del_cuerpo_afectado, razon_social: @accidente.razon_social, realiza_su_labor: @accidente.realiza_su_labor, responsable_informe: @accidente.responsable_informe, sitio: @accidente.sitio, telefono_ct: @accidente.telefono_ct, telefono_reportado: @accidente.telefono_reportado, telefono_sede_principal: @accidente.telefono_sede_principal, testigo1: @accidente.testigo1, testigo2: @accidente.testigo2, tiempo_laborado: @accidente.tiempo_laborado, tipo_de_accidente: @accidente.tipo_de_accidente, tipo_de_lesion: @accidente.tipo_de_lesion, tipo_de_vinculacion: @accidente.tipo_de_vinculacion, tipodoc1: @accidente.tipodoc1, tipodoc2: @accidente.tipodoc2, tipodoc3: @accidente.tipodoc3, tipodoc_id: @accidente.tipodoc_id, zona1: @accidente.zona1, zona2: @accidente.zona2, zona: @accidente.zona }
    assert_redirected_to accidente_path(assigns(:accidente))
  end

  test "should destroy accidente" do
    assert_difference('Accidente.count', -1) do
      delete :destroy, id: @accidente
    end

    assert_redirected_to accidentes_path
  end
end
