require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "shoul not throw exception" do
  	t = PointExpirer.new
  	date = Date.new(2014,3,13)
    
 	assert t.expire(date)
  end




end
