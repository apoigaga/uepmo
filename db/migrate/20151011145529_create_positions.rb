class CreatePositions < ActiveRecord::Migration
  
  def up
    create_table :positions do |t|
    	t.string :positions_name

      t.timestamps null: false
    end
  end

  def down
  	drop_table :positions
end
end
