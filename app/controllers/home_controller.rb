require 'date'
class HomeController < ApplicationController
  def index
  	 point_expirer = PointExpirer.new

  	 date = Date.new(2014,3,13)

  	 point_expirer.expire(date)
  end
end

