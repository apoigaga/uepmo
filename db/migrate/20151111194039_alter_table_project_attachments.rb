class AlterTableProjectAttachments < ActiveRecord::Migration
  def up
  	change_table :project_attachments do |t|
  		rename_column :project_attachments, :project_attachments_desc, :projectattachmentdesc
  		end
  end

  def down
  	change_table :project_attachments do |t|
  		rename_column :project_attachments, :projectattachmentdesc, :project_attachments_desc
  		end
  end
  		
end