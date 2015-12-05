class Renamestaffidcolumntotableproject < ActiveRecord::Migration
  def up
  	change_table :projects do |t|
  		rename_column :projects, :staffid, :staff_id
  	end
  end

  def down
  	change_table :projects do |t|
  		rename_column :projects, :staff_id, :staffid
  	end
  end

end