require 'test_helper'

class RiesgosControllerTest < ActionController::TestCase
  setup do
    @riesgo = riesgos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:riesgos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create riesgo" do
    assert_difference('Riesgo.count') do
      post :create, riesgo: { areadeseccionopuestodetrabajo: @riesgo.areadeseccionopuestodetrabajo, clasederiesgo: @riesgo.clasederiesgo, consecuencia: @riesgo.consecuencia, controlesexitentes: @riesgo.controlesexitentes, controlesrecomendados: @riesgo.controlesrecomendados, efectoconocido: @riesgo.efectoconocido, empresa: @riesgo.empresa, exposicion: @riesgo.exposicion, factordeponderacion: @riesgo.factordeponderacion, factorderiesgo: @riesgo.factorderiesgo, fecha: @riesgo.fecha, fuentegeneradora: @riesgo.fuentegeneradora, funcionario_id: @riesgo.funcionario_id, numerodeexpuestos: @riesgo.numerodeexpuestos, repercuciondelriesgo: @riesgo.repercuciondelriesgo, tiempo: @riesgo.tiempo }
    end

    assert_redirected_to riesgo_path(assigns(:riesgo))
  end

  test "should show riesgo" do
    get :show, id: @riesgo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @riesgo
    assert_response :success
  end

  test "should update riesgo" do
    patch :update, id: @riesgo, riesgo: { areadeseccionopuestodetrabajo: @riesgo.areadeseccionopuestodetrabajo, clasederiesgo: @riesgo.clasederiesgo, consecuencia: @riesgo.consecuencia, controlesexitentes: @riesgo.controlesexitentes, controlesrecomendados: @riesgo.controlesrecomendados, efectoconocido: @riesgo.efectoconocido, empresa: @riesgo.empresa, exposicion: @riesgo.exposicion, factordeponderacion: @riesgo.factordeponderacion, factorderiesgo: @riesgo.factorderiesgo, fecha: @riesgo.fecha, fuentegeneradora: @riesgo.fuentegeneradora, funcionario_id: @riesgo.funcionario_id, numerodeexpuestos: @riesgo.numerodeexpuestos, repercuciondelriesgo: @riesgo.repercuciondelriesgo, tiempo: @riesgo.tiempo }
    assert_redirected_to riesgo_path(assigns(:riesgo))
  end

  test "should destroy riesgo" do
    assert_difference('Riesgo.count', -1) do
      delete :destroy, id: @riesgo
    end

    assert_redirected_to riesgos_path
  end
end
