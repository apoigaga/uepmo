class Department < ActiveRecord::Base

	belongs_to :faculty,:foreign_key => :faculty_id, :primary_key => :department_id
	has_many :staffs,:foreign_key => :staff_id, :primary_key => :department_id
end
