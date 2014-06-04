require 'test_helper'

class Insumolab3rosControllerTest < ActionController::TestCase
  setup do
    @insumolab3ro = insumolab3ros(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:insumolab3ros)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create insumolab3ro" do
    assert_difference('Insumolab3ro.count') do
      post :create, insumolab3ro: { cantidad: @insumolab3ro.cantidad, comentario: @insumolab3ro.comentario, insumo_id: @insumolab3ro.insumo_id, lab3ro_id: @insumolab3ro.lab3ro_id, precio: @insumolab3ro.precio }
    end

    assert_redirected_to insumolab3ro_path(assigns(:insumolab3ro))
  end

  test "should show insumolab3ro" do
    get :show, id: @insumolab3ro
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @insumolab3ro
    assert_response :success
  end

  test "should update insumolab3ro" do
    patch :update, id: @insumolab3ro, insumolab3ro: { cantidad: @insumolab3ro.cantidad, comentario: @insumolab3ro.comentario, insumo_id: @insumolab3ro.insumo_id, lab3ro_id: @insumolab3ro.lab3ro_id, precio: @insumolab3ro.precio }
    assert_redirected_to insumolab3ro_path(assigns(:insumolab3ro))
  end

  test "should destroy insumolab3ro" do
    assert_difference('Insumolab3ro.count', -1) do
      delete :destroy, id: @insumolab3ro
    end

    assert_redirected_to insumolab3ros_path
  end
end
