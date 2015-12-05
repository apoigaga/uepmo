class CreateFaculties < ActiveRecord::Migration
  def up
    create_table :faculties do |t|
    	t.string :faculties_name

      t.timestamps null: false
    end
  end
  def down
  	drop_table :faculties
end
end
