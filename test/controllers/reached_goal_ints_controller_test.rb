require 'test_helper'

class ReachedGoalIntsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @reached_goal_int = reached_goal_ints(:one)
  end

  test "should get index" do
    get reached_goal_ints_url
    assert_response :success
  end

  test "should get new" do
    get new_reached_goal_int_url
    assert_response :success
  end

  test "should create reached_goal_int" do
    assert_difference('ReachedGoalInt.count') do
      post reached_goal_ints_url, params: { reached_goal_int: { april: @reached_goal_int.april, august: @reached_goal_int.august, december: @reached_goal_int.december, february: @reached_goal_int.february, goal_int_id: @reached_goal_int.goal_int_id, january: @reached_goal_int.january, july: @reached_goal_int.july, june: @reached_goal_int.june, march: @reached_goal_int.march, may: @reached_goal_int.may, november: @reached_goal_int.november, october: @reached_goal_int.october, september: @reached_goal_int.september } }
    end

    assert_redirected_to reached_goal_int_url(ReachedGoalInt.last)
  end

  test "should show reached_goal_int" do
    get reached_goal_int_url(@reached_goal_int)
    assert_response :success
  end

  test "should get edit" do
    get edit_reached_goal_int_url(@reached_goal_int)
    assert_response :success
  end

  test "should update reached_goal_int" do
    patch reached_goal_int_url(@reached_goal_int), params: { reached_goal_int: { april: @reached_goal_int.april, august: @reached_goal_int.august, december: @reached_goal_int.december, february: @reached_goal_int.february, goal_int_id: @reached_goal_int.goal_int_id, january: @reached_goal_int.january, july: @reached_goal_int.july, june: @reached_goal_int.june, march: @reached_goal_int.march, may: @reached_goal_int.may, november: @reached_goal_int.november, october: @reached_goal_int.october, september: @reached_goal_int.september } }
    assert_redirected_to reached_goal_int_url(@reached_goal_int)
  end

  test "should destroy reached_goal_int" do
    assert_difference('ReachedGoalInt.count', -1) do
      delete reached_goal_int_url(@reached_goal_int)
    end

    assert_redirected_to reached_goal_ints_url
  end
end
