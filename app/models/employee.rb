class Employee < ActiveRecord::Base

	belongs_to :staff, :foreign_key => :staff_id, :primary_key => :employee_id
	belongs_to :project,:foreign_key => :project_id, :primary_key => :employee_id
end
