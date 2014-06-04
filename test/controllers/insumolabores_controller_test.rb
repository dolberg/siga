require 'test_helper'

class InsumolaboresControllerTest < ActionController::TestCase
  setup do
    @insumolabore = insumolabores(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:insumolabores)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create insumolabore" do
    assert_difference('Insumolabore.count') do
      post :create, insumolabore: { cantidad: @insumolabore.cantidad, comentario: @insumolabore.comentario, insumo_id: @insumolabore.insumo_id, labor_id: @insumolabore.labor_id }
    end

    assert_redirected_to insumolabore_path(assigns(:insumolabore))
  end

  test "should show insumolabore" do
    get :show, id: @insumolabore
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @insumolabore
    assert_response :success
  end

  test "should update insumolabore" do
    patch :update, id: @insumolabore, insumolabore: { cantidad: @insumolabore.cantidad, comentario: @insumolabore.comentario, insumo_id: @insumolabore.insumo_id, labor_id: @insumolabore.labor_id }
    assert_redirected_to insumolabore_path(assigns(:insumolabore))
  end

  test "should destroy insumolabore" do
    assert_difference('Insumolabore.count', -1) do
      delete :destroy, id: @insumolabore
    end

    assert_redirected_to insumolabores_path
  end
end
