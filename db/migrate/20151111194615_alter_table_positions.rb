class AlterTablePositions < ActiveRecord::Migration
  def up
  	change_table :positions do |t|
  		rename_column :positions, :positions_name, :positionname
  		
  	end
  end

  def down
  	change_table :positions do |t|
  		rename_column :positions, :positionname, :positions_name
  	end
  		
  	end
end
