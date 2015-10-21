require 'test_helper'

class PageControllerTest < ActionController::TestCase
  test "should get project" do
    get :project
    assert_response :success
  end

  test "should get approval" do
    get :approval
    assert_response :success
  end

  test "should get task" do
    get :task
    assert_response :success
  end

  test "should get issue" do
    get :issue
    assert_response :success
  end

  test "should get project_health" do
    get :project_health
    assert_response :success
  end

end
