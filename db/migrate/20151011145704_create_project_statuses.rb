class CreateProjectStatuses < ActiveRecord::Migration
  def up
    create_table :project_statuses do |t|
    	t.string :project_statuses_name

      t.timestamps null: false
    end
  end

  def down
  	drop_table :project_statuses
end
end
