class AlterTableLeadDirector < ActiveRecord::Migration
  def up
  	change_table :lead_directors do |t|
  		rename_column :lead_directors, :director_name, :directorname
  		
  	end
  end

  def down
  	change_table :lead_directors do |t|
  		rename_column :lead_directors, :directorname, :director_name
  end
end
end
