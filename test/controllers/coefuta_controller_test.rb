require 'test_helper'

class CoefutaControllerTest < ActionController::TestCase
  setup do
    @coefutum = coefuta(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:coefuta)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create coefutum" do
    assert_difference('Coefutum.count') do
      post :create, coefutum: { coef: @coefutum.coef, labor: @coefutum.labor, usuario_id: @coefutum.usuario_id }
    end

    assert_redirected_to coefutum_path(assigns(:coefutum))
  end

  test "should show coefutum" do
    get :show, id: @coefutum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @coefutum
    assert_response :success
  end

  test "should update coefutum" do
    patch :update, id: @coefutum, coefutum: { coef: @coefutum.coef, labor: @coefutum.labor, usuario_id: @coefutum.usuario_id }
    assert_redirected_to coefutum_path(assigns(:coefutum))
  end

  test "should destroy coefutum" do
    assert_difference('Coefutum.count', -1) do
      delete :destroy, id: @coefutum
    end

    assert_redirected_to coefuta_path
  end
end
