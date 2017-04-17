json.status true
json.data do  
	json.teachers @teachers do |teacher|
		json.name teacher.name
		json.t_number teacher.t_number
		json.courses teacher.courses do |course|
			json.name course.name
			json.c_number course.c_number
		end
	end
end