class CreatePendaftars < ActiveRecord::Migration
  def change
    create_table :pendaftars do |t|

      t.timestamps null: false
    end
  end
end
