class Project < ActiveRecord::Base

	belongs_to :staff
	belongs_to :leaddirector
	belongs_to :pendaftar
	
	
	has_many :employees
	has_many :projectattachments

	# belongs_to :lead_director, :class_name => "Project",
	# :foreign_key => "lead_director"




	
end
