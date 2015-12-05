class AddLeaddirectorcolumntotableproject < ActiveRecord::Migration
  def up
  	change_table :projects do |t|
  		add_column :projects, :leaddirector, :integer, after: :finishdate
  		
  	end
  end

  def down
  	change_table :projects do |t|
  		remove_column :projects, :leaddirector, :integer, after: :finishdate
  		
  	end
  end

end
