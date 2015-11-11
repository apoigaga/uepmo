class Programme < ActiveRecord::Base

	belongs_to :staff,:foreign_key => :staff_id, :primary_key => :programme_id
end
