require 'test_helper'

class ResultadoControllerTest < ActionController::TestCase
  test "should get actividad" do
    get :actividad
    assert_response :success
  end

  test "should get lote" do
    get :lote
    assert_response :success
  end

end
