class CreateProgrammes < ActiveRecord::Migration
  def change
    create_table :programmes do |t|
    	t.string :programmes_name
      t.string :programmes_manager

      t.timestamps null: false
    end
  end

  def down
  	drop_table :programmes
end
end
