class CreateProjectAttachments < ActiveRecord::Migration
  
  def up
    create_table :project_attachments do |t|
    	t.string :project_attachments
    	t.string :project_attachments_desc

      t.timestamps null: false
    end
  end

  def down
  	drop_table :project_attachments
end
end
