require 'test_helper'

class ProjectionGoalFloatsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @projection_goal_float = projection_goal_floats(:one)
  end

  test "should get index" do
    get projection_goal_floats_url
    assert_response :success
  end

  test "should get new" do
    get new_projection_goal_float_url
    assert_response :success
  end

  test "should create projection_goal_float" do
    assert_difference('ProjectionGoalFloat.count') do
      post projection_goal_floats_url, params: { projection_goal_float: { april: @projection_goal_float.april, august: @projection_goal_float.august, december: @projection_goal_float.december, february: @projection_goal_float.february, goal_float_id: @projection_goal_float.goal_float_id, january: @projection_goal_float.january, july: @projection_goal_float.july, june: @projection_goal_float.june, march: @projection_goal_float.march, may: @projection_goal_float.may, november: @projection_goal_float.november, october: @projection_goal_float.october, september: @projection_goal_float.september } }
    end

    assert_redirected_to projection_goal_float_url(ProjectionGoalFloat.last)
  end

  test "should show projection_goal_float" do
    get projection_goal_float_url(@projection_goal_float)
    assert_response :success
  end

  test "should get edit" do
    get edit_projection_goal_float_url(@projection_goal_float)
    assert_response :success
  end

  test "should update projection_goal_float" do
    patch projection_goal_float_url(@projection_goal_float), params: { projection_goal_float: { april: @projection_goal_float.april, august: @projection_goal_float.august, december: @projection_goal_float.december, february: @projection_goal_float.february, goal_float_id: @projection_goal_float.goal_float_id, january: @projection_goal_float.january, july: @projection_goal_float.july, june: @projection_goal_float.june, march: @projection_goal_float.march, may: @projection_goal_float.may, november: @projection_goal_float.november, october: @projection_goal_float.october, september: @projection_goal_float.september } }
    assert_redirected_to projection_goal_float_url(@projection_goal_float)
  end

  test "should destroy projection_goal_float" do
    assert_difference('ProjectionGoalFloat.count', -1) do
      delete projection_goal_float_url(@projection_goal_float)
    end

    assert_redirected_to projection_goal_floats_url
  end
end
