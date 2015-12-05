class Staff < ActiveRecord::Base

	belongs_to :department
	belongs_to :position

	has_many :programmes
	has_many :projects
	has_many :employees
end
