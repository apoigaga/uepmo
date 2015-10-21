class CreateEmployees < ActiveRecord::Migration
  
  def up
    create_table :employees do |t|
    	t.string :employees_name
      t.string :employees_email
      t.string :employees_phone

      t.timestamps null: false
    end
  end

  def down
  	drop_table :employees
end
end