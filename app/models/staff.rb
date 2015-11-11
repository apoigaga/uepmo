class Staff < ActiveRecord::Base

	belongs_to :department,:foreign_key => :department_id, :primary_key => :staff_id
	belongs_to :position,:foreign_key => :position_id, :primary_key => :staff_id

	has_many :programmes,:foreign_key => :programme_id, :primary_key => :staff_id
	has_many :projects ,:foreign_key => :project_id, :primary_key => :staff_id
	has_many :employees,:foreign_key => :employee_id, :primary_key => :staff_id
end
