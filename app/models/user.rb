require 'active_record'

class User < ActiveRecord::Base
	has_many :point_line_items
end