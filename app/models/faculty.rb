class Faculty < ActiveRecord::Base

	belongs_to :campus,:foreign_key => :campus_id, :primary_key => :faculty_id
	
	has_many :departments,:foreign_key => :department_id, :primary_key => :faculty_id

end
