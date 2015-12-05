class CreateStaffs < ActiveRecord::Migration
 
  def up
    create_table :staffs do |t|
    	t.string :staffs_name
      	t.string :staffs_email
      	t.string :staffs_phone

      t.timestamps null: false
    end
  end

  def down
  	drop_table :staffs
end
end
