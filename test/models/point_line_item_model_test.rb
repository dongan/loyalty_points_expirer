require 'test_helper'

class PointLineItemTest < ActiveSupport::TestCase
	test "should save the line" do
		t = PointLineItem.new
		t.id = 100
		assert t.save
	end
end