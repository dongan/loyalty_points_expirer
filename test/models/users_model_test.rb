require 'test_helper'

class UserTest < ActiveSupport::TestCase
	test "should save the line" do
		t = User.new
		t.id = 100
		assert t.save
	end
end