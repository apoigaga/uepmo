class Project < ActiveRecord::Base

	belongs_to :staff
	belongs_to :employee
	belongs_to :project_attachment
	
end
