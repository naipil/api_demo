# == Schema Information
#
# Table name: teachers
#
#  id         :integer          not null, primary key
#  name       :string
#  t_number   :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Teacher < ApplicationRecord
	has_many :courses

	def remove
		self.courses.update_all(teacher_id: nil)
		self.destroy			
	end
end
