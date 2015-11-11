class AlterTableEmployees < ActiveRecord::Migration
  def up
  	change_table :employees do |t|
  		rename_column :employees, :employees_name, :employeename
  		rename_column :employees, :employees_email, :employeeemail
  		rename_column :employees, :employees_phone, :employeephone
  		
  	end
  end

  def down
  	change_table :employees do |t|
  		rename_column :employees, :employeename, :employees_name
  		rename_column :employees, :employees_name, :employeename
  		rename_column :employees, :employeephone, :employees_phone
  		
  end
end
end