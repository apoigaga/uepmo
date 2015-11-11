class Campu < ActiveRecord::Base

	has_many :faculties,:foreign_key => :faculty_id, :primary_key => :campus_id

end
