class Renamatableleaddirectors < ActiveRecord::Migration
  def change
     rename_table :lead_directors, :leaddirector
     rename_table :employee_tasks, :employeetask
     rename_table :project_attachments, :projectattachment
     rename_table :project_statuses, :projectstatus
   end 
 end 