class CreatePpTncPis < ActiveRecord::Migration
  def up
    create_table :pp_tnc_pis do |t|
    	t.string :project_name
      t.text :description
      t.date :start_date
      t.date :finish_date
      t.string :lead_director
      t.string :programme_manager
      t.string :project_manager
      t.string :programme
      t.string :Transformation
      t.string :Components
      t.text :project_outcome
      t.string :Teras_RMKe11_Berkaitan
      t.string :Agenda_Utama_Berkaitan
      t.string :KPI_UiTM_Berkaitan
      t.text :deliverables
      t.text :first_milestone
      t.text :impact
      t.text :budget
      t.text :latihan

      t.timestamps null: false
    end
  end

  def down
  	drop_table :pp_tnc_pis
  end
end
