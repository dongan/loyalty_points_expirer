require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should not throw exception" do
  	t = PointExpirer.new
    date = Date.new(2014,3,13)
    
    assert t.expire(date)
  end

  test "should create new line in DB" do
  	t = PointExpirer.new
  	date = Date.new(2014,3,13)
  	t.expire(date)

  	assert_not_nil PointLineItem.where(points:-295)
  end
 



end
