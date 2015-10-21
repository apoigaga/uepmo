class Staff < ActiveRecord::Base

	belongs_to :departments
	has_many :programmes
	has_many :projects
	has_many :positions
	has_many :employees
end
