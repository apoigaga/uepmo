class AlterTableFaculties < ActiveRecord::Migration
  def up
  	change_table :faculties do |t|
  		rename_column :faculties, :faculties_name, :facultyname
  		
  	end
  end

  def down
  	change_table :faculties do |t|
  		rename_column :faculties, :facultyname, :faculties_name
  end
end
end
