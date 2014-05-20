require 'test_helper'

class FacyRemsControllerTest < ActionController::TestCase
  setup do
    @facy_rem = facy_rems(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:facy_rems)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create facy_rem" do
    assert_difference('FacyRem.count') do
      post :create, facy_rem: { fecha: @facy_rem.fecha, proveedor: @facy_rem.proveedor, usuario_id: @facy_rem.usuario_id }
    end

    assert_redirected_to facy_rem_path(assigns(:facy_rem))
  end

  test "should show facy_rem" do
    get :show, id: @facy_rem
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @facy_rem
    assert_response :success
  end

  test "should update facy_rem" do
    patch :update, id: @facy_rem, facy_rem: { fecha: @facy_rem.fecha, proveedor: @facy_rem.proveedor, usuario_id: @facy_rem.usuario_id }
    assert_redirected_to facy_rem_path(assigns(:facy_rem))
  end

  test "should destroy facy_rem" do
    assert_difference('FacyRem.count', -1) do
      delete :destroy, id: @facy_rem
    end

    assert_redirected_to facy_rems_path
  end
end
