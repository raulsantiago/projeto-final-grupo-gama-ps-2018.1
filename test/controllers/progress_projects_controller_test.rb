require 'test_helper'

class ProgressProjectsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @progress_project = progress_projects(:one)
  end

  test "should get index" do
    get progress_projects_url
    assert_response :success
  end

  test "should get new" do
    get new_progress_project_url
    assert_response :success
  end

  test "should create progress_project" do
    assert_difference('ProgressProject.count') do
      post progress_projects_url, params: { progress_project: { date_send: @progress_project.date_send, destiny_unity: @progress_project.destiny_unity, information: @progress_project.information, origin_unity: @progress_project.origin_unity, project_id: @progress_project.project_id } }
    end

    assert_redirected_to progress_project_url(ProgressProject.last)
  end

  test "should show progress_project" do
    get progress_project_url(@progress_project)
    assert_response :success
  end

  test "should get edit" do
    get edit_progress_project_url(@progress_project)
    assert_response :success
  end

  test "should update progress_project" do
    patch progress_project_url(@progress_project), params: { progress_project: { date_send: @progress_project.date_send, destiny_unity: @progress_project.destiny_unity, information: @progress_project.information, origin_unity: @progress_project.origin_unity, project_id: @progress_project.project_id } }
    assert_redirected_to progress_project_url(@progress_project)
  end

  test "should destroy progress_project" do
    assert_difference('ProgressProject.count', -1) do
      delete progress_project_url(@progress_project)
    end

    assert_redirected_to progress_projects_url
  end
end
