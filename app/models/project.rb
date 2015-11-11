class Project < ActiveRecord::Base

	belongs_to :staff,:foreign_key => :project_id, :primary_key => :project_id
	
	has_many :employees,:foreign_key => :employee_id, :primary_key => :project_id
	has_many :project_attachments,:foreign_key => :projectattachment_id, :primary_key => :project_id

	# belongs_to :lead_director, :class_name => "Project",
	# :foreign_key => "lead_director"




	
end
