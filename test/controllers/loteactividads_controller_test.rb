require 'test_helper'

class LoteactividadsControllerTest < ActionController::TestCase
  setup do
    @loteactividad = loteactividads(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:loteactividads)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create loteactividad" do
    assert_difference('Loteactividad.count') do
      post :create, loteactividad: { actividad_id: @loteactividad.actividad_id, campo_id: @loteactividad.campo_id, lote_id: @loteactividad.lote_id, usuario_id: @loteactividad.usuario_id }
    end

    assert_redirected_to loteactividad_path(assigns(:loteactividad))
  end

  test "should show loteactividad" do
    get :show, id: @loteactividad
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @loteactividad
    assert_response :success
  end

  test "should update loteactividad" do
    patch :update, id: @loteactividad, loteactividad: { actividad_id: @loteactividad.actividad_id, campo_id: @loteactividad.campo_id, lote_id: @loteactividad.lote_id, usuario_id: @loteactividad.usuario_id }
    assert_redirected_to loteactividad_path(assigns(:loteactividad))
  end

  test "should destroy loteactividad" do
    assert_difference('Loteactividad.count', -1) do
      delete :destroy, id: @loteactividad
    end

    assert_redirected_to loteactividads_path
  end
end
