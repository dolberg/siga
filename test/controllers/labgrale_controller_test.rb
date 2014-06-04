require 'test_helper'

class LabgraleControllerTest < ActionController::TestCase
  test "should get :labgrales" do
    get ::labgrales
    assert_response :success
  end

end
