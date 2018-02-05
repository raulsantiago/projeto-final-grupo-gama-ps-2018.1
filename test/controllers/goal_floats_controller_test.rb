require 'test_helper'

class GoalFloatsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @goal_float = goal_floats(:one)
  end

  test "should get index" do
    get goal_floats_url
    assert_response :success
  end

  test "should get new" do
    get new_goal_float_url
    assert_response :success
  end

  test "should create goal_float" do
    assert_difference('GoalFloat.count') do
      post goal_floats_url, params: { goal_float: { name_goal_float: @goal_float.name_goal_float, year_goal_float: @goal_float.year_goal_float } }
    end

    assert_redirected_to goal_float_url(GoalFloat.last)
  end

  test "should show goal_float" do
    get goal_float_url(@goal_float)
    assert_response :success
  end

  test "should get edit" do
    get edit_goal_float_url(@goal_float)
    assert_response :success
  end

  test "should update goal_float" do
    patch goal_float_url(@goal_float), params: { goal_float: { name_goal_float: @goal_float.name_goal_float, year_goal_float: @goal_float.year_goal_float } }
    assert_redirected_to goal_float_url(@goal_float)
  end

  test "should destroy goal_float" do
    assert_difference('GoalFloat.count', -1) do
      delete goal_float_url(@goal_float)
    end

    assert_redirected_to goal_floats_url
  end
end
