require 'test_helper'

class LaborsControllerTest < ActionController::TestCase
  setup do
    @labor = labors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:labors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create labor" do
    assert_difference('Labor.count') do
      post :create, labor: { campo_id: @labor.campo_id, coefutum_id: @labor.coefutum_id, comentario: @labor.comentario, fecha: @labor.fecha, lote_id: @labor.lote_id, superficie: @labor.superficie, usuario_id: @labor.usuario_id }
    end

    assert_redirected_to labor_path(assigns(:labor))
  end

  test "should show labor" do
    get :show, id: @labor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @labor
    assert_response :success
  end

  test "should update labor" do
    patch :update, id: @labor, labor: { campo_id: @labor.campo_id, coefutum_id: @labor.coefutum_id, comentario: @labor.comentario, fecha: @labor.fecha, lote_id: @labor.lote_id, superficie: @labor.superficie, usuario_id: @labor.usuario_id }
    assert_redirected_to labor_path(assigns(:labor))
  end

  test "should destroy labor" do
    assert_difference('Labor.count', -1) do
      delete :destroy, id: @labor
    end

    assert_redirected_to labors_path
  end
end
