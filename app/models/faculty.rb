class Faculty < ActiveRecord::Base

	belongs_to :campus
	
	has_many :departments

end
