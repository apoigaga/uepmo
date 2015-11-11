class LeadDirector < ActiveRecord::Base

	has_many :projects,:foreign_key => :project_id, :primary_key => :leaddirector_id
end
