class AlterTableCampus < ActiveRecord::Migration
  def up
  	change_table :campus do |t|
  		rename_column :campus, :campus_name, :campusname

  		
  	end
  end

  def down
  	change_table :campus do |t|
  		rename_column :campus, :campusname, :campus_name
  		
  	end
end
end
