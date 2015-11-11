class EmployeeTask < ActiveRecord::Base

	belongs_to :employee,:foreign_key => :employee_id, :primary_key => :employeetask_id
end
