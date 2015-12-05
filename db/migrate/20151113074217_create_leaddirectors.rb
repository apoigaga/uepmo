class CreateLeaddirectors < ActiveRecord::Migration
  def up
    create_table :leaddirectors do |t|
    	t.string :directorname

      t.timestamps null: false
    end
  end

  def down 
  	drop_table :leaddirectors
    	
 
  end
end
