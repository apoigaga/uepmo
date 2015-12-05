class AlterTableApprovals < ActiveRecord::Migration
  def up
  	change_table :approvals do |t|
  		rename_column :approvals, :approvals_status_name, :approvalstatusname

  		
  	end
  end

  def down
  	change_table :approvals do |t|
  		rename_column :approvals, :approvalstatusname, :approvals_status_name
  		
  	end
end
end
