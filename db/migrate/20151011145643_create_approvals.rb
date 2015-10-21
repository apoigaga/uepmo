class CreateApprovals < ActiveRecord::Migration
  def up
    create_table :approvals do |t|
    	t.string :approvals_status_name

      t.timestamps null: false
    end
  end

  def down
  	drop_table :approvals
end
end
