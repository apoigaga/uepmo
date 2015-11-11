class Position < ActiveRecord::Base
	
	belongs_to :staff,:foreign_key => :staff_id, :primary_key => :position_id
	
end
