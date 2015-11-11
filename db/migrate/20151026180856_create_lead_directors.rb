class CreateLeadDirectors < ActiveRecord::Migration
  def up
    create_table :lead_directors do |t|

    	t.string :director_name
    	

      t.timestamps null: false
    end
  end

  def down
  	drop_table :lead_directors
  end
end
