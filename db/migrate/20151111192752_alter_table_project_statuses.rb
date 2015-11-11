class AlterTableProjectStatuses < ActiveRecord::Migration
  def up
  	change_table :project_statuses do |t|
  		rename_column :project_statuses, :project_statuses_name, :projectstatusname
  		end
  end

  def down
  	change_table :project_statuses do |t|
  		rename_column :project_statuses, :projectstatusname, :project_statuses_name
  	end
  end
  		
end
