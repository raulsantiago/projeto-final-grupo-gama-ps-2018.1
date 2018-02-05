require 'test_helper'

class ReachedGoalFloatsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @reached_goal_float = reached_goal_floats(:one)
  end

  test "should get index" do
    get reached_goal_floats_url
    assert_response :success
  end

  test "should get new" do
    get new_reached_goal_float_url
    assert_response :success
  end

  test "should create reached_goal_float" do
    assert_difference('ReachedGoalFloat.count') do
      post reached_goal_floats_url, params: { reached_goal_float: { april: @reached_goal_float.april, august: @reached_goal_float.august, december: @reached_goal_float.december, february: @reached_goal_float.february, goal_float_id: @reached_goal_float.goal_float_id, january: @reached_goal_float.january, july: @reached_goal_float.july, june: @reached_goal_float.june, march: @reached_goal_float.march, may: @reached_goal_float.may, november: @reached_goal_float.november, october: @reached_goal_float.october, september: @reached_goal_float.september } }
    end

    assert_redirected_to reached_goal_float_url(ReachedGoalFloat.last)
  end

  test "should show reached_goal_float" do
    get reached_goal_float_url(@reached_goal_float)
    assert_response :success
  end

  test "should get edit" do
    get edit_reached_goal_float_url(@reached_goal_float)
    assert_response :success
  end

  test "should update reached_goal_float" do
    patch reached_goal_float_url(@reached_goal_float), params: { reached_goal_float: { april: @reached_goal_float.april, august: @reached_goal_float.august, december: @reached_goal_float.december, february: @reached_goal_float.february, goal_float_id: @reached_goal_float.goal_float_id, january: @reached_goal_float.january, july: @reached_goal_float.july, june: @reached_goal_float.june, march: @reached_goal_float.march, may: @reached_goal_float.may, november: @reached_goal_float.november, october: @reached_goal_float.october, september: @reached_goal_float.september } }
    assert_redirected_to reached_goal_float_url(@reached_goal_float)
  end

  test "should destroy reached_goal_float" do
    assert_difference('ReachedGoalFloat.count', -1) do
      delete reached_goal_float_url(@reached_goal_float)
    end

    assert_redirected_to reached_goal_floats_url
  end
end
