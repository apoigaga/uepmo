json.array!(@projects) do |project|
  json.extract! project, :id, :project_name, :description, :start_date, :finish_date, :leaddirector, :programme_manager, :project_manager, :programme, :Transformation, :Components, :project_outcome, :Teras_RMKe-11_Berkaitan, :Agenda_Utama_Berkaitan, :KPI_UiTM_Berkaitan, :deliverables, :first_milestone, :impact, :budget, :latihan
  json.url project_url(project, format: :json)
end
