class AlterTableDepartments < ActiveRecord::Migration
  def up
  	change_table :departments do |t|
  		rename_column :departments, :departments_name, :departmentname

  		
  	end
  end

  def down
  	change_table :departments do |t|
  		rename_column :departments, :departmentname, :departments_name
  		
  	end
end
end
