require 'test_helper'

class Lab3rosControllerTest < ActionController::TestCase
  setup do
    @lab3ro = lab3ros(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lab3ros)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lab3ro" do
    assert_difference('Lab3ro.count') do
      post :create, lab3ro: { campo_id: @lab3ro.campo_id, comentario: @lab3ro.comentario, costo: @lab3ro.costo, fecha: @lab3ro.fecha, labor: @lab3ro.labor, lote_id: @lab3ro.lote_id, superficie: @lab3ro.superficie, usuario_id: @lab3ro.usuario_id }
    end

    assert_redirected_to lab3ro_path(assigns(:lab3ro))
  end

  test "should show lab3ro" do
    get :show, id: @lab3ro
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lab3ro
    assert_response :success
  end

  test "should update lab3ro" do
    patch :update, id: @lab3ro, lab3ro: { campo_id: @lab3ro.campo_id, comentario: @lab3ro.comentario, costo: @lab3ro.costo, fecha: @lab3ro.fecha, labor: @lab3ro.labor, lote_id: @lab3ro.lote_id, superficie: @lab3ro.superficie, usuario_id: @lab3ro.usuario_id }
    assert_redirected_to lab3ro_path(assigns(:lab3ro))
  end

  test "should destroy lab3ro" do
    assert_difference('Lab3ro.count', -1) do
      delete :destroy, id: @lab3ro
    end

    assert_redirected_to lab3ros_path
  end
end
