class PointExpirer
	def expire(date)
		
		result = 0

		User.where(true).each do |user|

			points_left = 0
			points_sum = 0
			
			PointLineItem.where(user_id: user.id).each do |line|
				if line.created_at < date 
					points_sum = points_sum + line.points
				end
				if line.created_at.advance(years:1) > date && line.points > 0
					points_left = points_left + line.points
				end
			end
			result = points_left - points_sum

			if result != 0
				t = PointLineItem.new
				t.user_id = user.id
				t.points = result
				t.source = "points expired"
				t.save
			end
		end

		
	end
end