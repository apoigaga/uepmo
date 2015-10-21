class CreateEmployeeTasks < ActiveRecord::Migration
  def up
    create_table :employee_tasks do |t|
    	t.string :employee_tasks_name

      t.timestamps null: false
    end
  end

  def down
  	drop_table :employee_tasks
end
end
