json.status true
json.data do  
	json.id @student.id
	json.name @student.name
	json.s_number @student.s_number
	json.courses @courses do |course|
		json.name course.name
		json.teacher_name course.teacher.try(:name)
		json.teacher_number course.teacher.try(:t_number)
	end
end