require 'test_helper'

class ProjectsControllerTest < ActionController::TestCase
  setup do
    @project = projects(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:projects)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create project" do
    assert_difference('Project.count') do
      post :create, project: { Agenda_Utama_Berkaitan: @project.Agenda_Utama_Berkaitan, Components: @project.Components, KPI_UiTM_Berkaitan: @project.KPI_UiTM_Berkaitan, Teras_RMKe-11_Berkaitan: @project.Teras_RMKe-11_Berkaitan, Transformation: @project.Transformation, budget: @project.budget, deliverables: @project.deliverables, description: @project.description, finish_date: @project.finish_date, first_milestone: @project.first_milestone, impact: @project.impact, latihan: @project.latihan, lead_director: @project.lead_director, programme: @project.programme, programme_manager: @project.programme_manager, project_manager: @project.project_manager, project_name: @project.project_name, project_outcome: @project.project_outcome, start_date: @project.start_date }
    end

    assert_redirected_to project_path(assigns(:project))
  end

  test "should show project" do
    get :show, id: @project
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @project
    assert_response :success
  end

  test "should update project" do
    patch :update, id: @project, project: { Agenda_Utama_Berkaitan: @project.Agenda_Utama_Berkaitan, Components: @project.Components, KPI_UiTM_Berkaitan: @project.KPI_UiTM_Berkaitan, Teras_RMKe-11_Berkaitan: @project.Teras_RMKe-11_Berkaitan, Transformation: @project.Transformation, budget: @project.budget, deliverables: @project.deliverables, description: @project.description, finish_date: @project.finish_date, first_milestone: @project.first_milestone, impact: @project.impact, latihan: @project.latihan, lead_director: @project.lead_director, programme: @project.programme, programme_manager: @project.programme_manager, project_manager: @project.project_manager, project_name: @project.project_name, project_outcome: @project.project_outcome, start_date: @project.start_date }
    assert_redirected_to project_path(assigns(:project))
  end

  test "should destroy project" do
    assert_difference('Project.count', -1) do
      delete :destroy, id: @project
    end

    assert_redirected_to projects_path
  end
end
