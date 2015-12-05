class Addstaffidcolumntotableproject < ActiveRecord::Migration
  def up
  	change_table :projects do |t|
  		add_column :projects, :staffid, :integer
  	end
  end

  def down
  	change_table :projects do |t|
  		remove_column :projects, :staffid, :integer
  	end
  end

end
