require 'active_record'

class PointLineItem < ActiveRecord::Base
	belongs_to :user
end