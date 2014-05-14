require 'test_helper'

class CompraInsumosControllerTest < ActionController::TestCase
  setup do
    @compra_insumo = compra_insumos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:compra_insumos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create compra_insumo" do
    assert_difference('CompraInsumo.count') do
      post :create, compra_insumo: { cant_fac: @compra_insumo.cant_fac, cant_rem: @compra_insumo.cant_rem, comprobante: @compra_insumo.comprobante, insumo_id: @compra_insumo.insumo_id, marca: @compra_insumo.marca, monto: @compra_insumo.monto, usuario_id: @compra_insumo.usuario_id }
    end

    assert_redirected_to compra_insumo_path(assigns(:compra_insumo))
  end

  test "should show compra_insumo" do
    get :show, id: @compra_insumo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @compra_insumo
    assert_response :success
  end

  test "should update compra_insumo" do
    patch :update, id: @compra_insumo, compra_insumo: { cant_fac: @compra_insumo.cant_fac, cant_rem: @compra_insumo.cant_rem, comprobante: @compra_insumo.comprobante, insumo_id: @compra_insumo.insumo_id, marca: @compra_insumo.marca, monto: @compra_insumo.monto, usuario_id: @compra_insumo.usuario_id }
    assert_redirected_to compra_insumo_path(assigns(:compra_insumo))
  end

  test "should destroy compra_insumo" do
    assert_difference('CompraInsumo.count', -1) do
      delete :destroy, id: @compra_insumo
    end

    assert_redirected_to compra_insumos_path
  end
end
