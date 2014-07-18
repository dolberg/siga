require 'test_helper'

class UsuarioempresasControllerTest < ActionController::TestCase
  setup do
    @usuarioempresa = usuarioempresas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:usuarioempresas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create usuarioempresa" do
    assert_difference('Usuarioempresa.count') do
      post :create, usuarioempresa: { empresa_id: @usuarioempresa.empresa_id, usuario_id: @usuarioempresa.usuario_id }
    end

    assert_redirected_to usuarioempresa_path(assigns(:usuarioempresa))
  end

  test "should show usuarioempresa" do
    get :show, id: @usuarioempresa
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @usuarioempresa
    assert_response :success
  end

  test "should update usuarioempresa" do
    patch :update, id: @usuarioempresa, usuarioempresa: { empresa_id: @usuarioempresa.empresa_id, usuario_id: @usuarioempresa.usuario_id }
    assert_redirected_to usuarioempresa_path(assigns(:usuarioempresa))
  end

  test "should destroy usuarioempresa" do
    assert_difference('Usuarioempresa.count', -1) do
      delete :destroy, id: @usuarioempresa
    end

    assert_redirected_to usuarioempresas_path
  end
end
