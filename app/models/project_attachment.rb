class ProjectAttachment < ActiveRecord::Base

	belongs_to :project,:foreign_key => :project_id, :primary_key => :projectattachment_id
end
