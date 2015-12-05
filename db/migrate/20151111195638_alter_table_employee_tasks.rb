class AlterTableEmployeeTasks < ActiveRecord::Migration
  def up
  	change_table :employee_tasks do |t|
  		rename_column :employee_tasks, :employee_tasks_name, :employeetaskname

  		
  	end
  end

  def down
  	change_table :employee_tasks do |t|
  		rename_column :employee_tasks, :employeetaskname, :employee_tasks_name
  		
  	end
end
end

