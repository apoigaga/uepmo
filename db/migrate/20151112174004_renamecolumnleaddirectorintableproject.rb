class Renamecolumnleaddirectorintableproject < ActiveRecord::Migration
  def up
  	change_table :projects do |t|
  		rename_column :projects, :leaddirector, :leaddirector_id
  	end
end

def down
  	change_table :projects do |t|
  		rename_column :projects, :leaddirector_id, :leaddirector
  	end
  	end
end


