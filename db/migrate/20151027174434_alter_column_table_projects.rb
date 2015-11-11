class AlterColumnTableProjects < ActiveRecord::Migration
 def up
    change_table :projects do |t|
      remove_column :projects, :lead_director
      rename_column :projects, :project_name, :projectname
      rename_column :projects, :start_date, :startdate
      rename_column :projects, :finish_date, :finishdate
      rename_column :projects, :programme_manager, :programmemanager
      rename_column :projects, :project_manager, :projectmanager
      rename_column :projects, :Transformation, :transformation
      rename_column :projects, :Components, :components
      rename_column :projects, :project_outcome, :projectoutcome
      rename_column :projects, :Teras_RMKe11_Berkaitan, :terasrmke11berkaitan
      rename_column :projects, :Agenda_Utama_Berkaitan, :agendautamaberkaitan
      rename_column :projects, :KPI_UiTM_Berkaitan, :kpiuitmberkaitan
      rename_column :projects, :first_milestone, :firstmilestone
	
    end
  end
  def down
    change_table :projects do |t|
      add_column :projects, :lead_director
      rename_column :projects, :projectname, :project_name
      rename_column :projects, :startdate, :start_date
      rename_column :projects, :finishdate, :finish_date
      rename_column :projects, :programmemanager, :programme_manager
      rename_column :projects, :projectmanager, :project_manager
      rename_column :projects, :transformation, :Transformation
      rename_column :projects, :components, :Components
      rename_column :projects, :projectoutcome, :project_outcome
      rename_column :projects, :terasrmke11berkaitan, :Teras_RMKe11_Berkaitan
      rename_column :projects, :agendautamaberkaitan, :Agenda_Utama_Berkaitan
      rename_column :projects, :kpiuitmberkaitan, :KPI_UiTM_Berkaitan
      rename_column :projects, :firstmilestone, :first_milestone
    end
  end
end