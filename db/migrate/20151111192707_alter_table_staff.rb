class AlterTableStaff < ActiveRecord::Migration
  def up
  	change_table :staffs do |t|
  		rename_column :staffs, :staffs_name, :staffname
  		rename_column :staffs, :staffs_email, :staffemail
  		rename_column :staffs, :staffs_phone, :staffphone


  end
end
  def down
  	change_table :staffs do |t|
  		rename_column :staffs, :staffname, :staffs_name
  		rename_column :staffs, :staffemail, :staffs_email
  		rename_column :staffs, :staffphone, :staffs_phone
end
end
end