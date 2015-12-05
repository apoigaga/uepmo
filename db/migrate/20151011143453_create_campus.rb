class CreateCampus < ActiveRecord::Migration
  
  def up
    create_table :campus do |t|
    	t.string :campus_name

      t.timestamps null: false
    end
  end
  def down
  	drop_table :campus
end
end
