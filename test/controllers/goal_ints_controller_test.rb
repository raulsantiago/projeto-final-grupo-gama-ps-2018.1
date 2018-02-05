require 'test_helper'

class GoalIntsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @goal_int = goal_ints(:one)
  end

  test "should get index" do
    get goal_ints_url
    assert_response :success
  end

  test "should get new" do
    get new_goal_int_url
    assert_response :success
  end

  test "should create goal_int" do
    assert_difference('GoalInt.count') do
      post goal_ints_url, params: { goal_int: { name_goal_int: @goal_int.name_goal_int, year_goal_int: @goal_int.year_goal_int } }
    end

    assert_redirected_to goal_int_url(GoalInt.last)
  end

  test "should show goal_int" do
    get goal_int_url(@goal_int)
    assert_response :success
  end

  test "should get edit" do
    get edit_goal_int_url(@goal_int)
    assert_response :success
  end

  test "should update goal_int" do
    patch goal_int_url(@goal_int), params: { goal_int: { name_goal_int: @goal_int.name_goal_int, year_goal_int: @goal_int.year_goal_int } }
    assert_redirected_to goal_int_url(@goal_int)
  end

  test "should destroy goal_int" do
    assert_difference('GoalInt.count', -1) do
      delete goal_int_url(@goal_int)
    end

    assert_redirected_to goal_ints_url
  end
end
