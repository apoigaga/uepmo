class AlterTableProgrammes < ActiveRecord::Migration
  def up
  	change_table :programmes do |t|
  		rename_column :programmes, :programmes_name, :programmename
  		rename_column :programmes, :programmes_manager, :programmemanager
  end
end

def down
	change_table :programmes do |t|
		rename_column :programmes, :programmename, :programmes_name
  		rename_column :programmes, :programmemanager, :programmes_manager
  end
end
end