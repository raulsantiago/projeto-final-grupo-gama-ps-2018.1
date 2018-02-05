require 'test_helper'

class ProjectionGoalIntsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @projection_goal_int = projection_goal_ints(:one)
  end

  test "should get index" do
    get projection_goal_ints_url
    assert_response :success
  end

  test "should get new" do
    get new_projection_goal_int_url
    assert_response :success
  end

  test "should create projection_goal_int" do
    assert_difference('ProjectionGoalInt.count') do
      post projection_goal_ints_url, params: { projection_goal_int: { april: @projection_goal_int.april, august: @projection_goal_int.august, december: @projection_goal_int.december, february: @projection_goal_int.february, goal_int_id: @projection_goal_int.goal_int_id, january: @projection_goal_int.january, july: @projection_goal_int.july, june: @projection_goal_int.june, march: @projection_goal_int.march, may: @projection_goal_int.may, november: @projection_goal_int.november, october: @projection_goal_int.october, september: @projection_goal_int.september } }
    end

    assert_redirected_to projection_goal_int_url(ProjectionGoalInt.last)
  end

  test "should show projection_goal_int" do
    get projection_goal_int_url(@projection_goal_int)
    assert_response :success
  end

  test "should get edit" do
    get edit_projection_goal_int_url(@projection_goal_int)
    assert_response :success
  end

  test "should update projection_goal_int" do
    patch projection_goal_int_url(@projection_goal_int), params: { projection_goal_int: { april: @projection_goal_int.april, august: @projection_goal_int.august, december: @projection_goal_int.december, february: @projection_goal_int.february, goal_int_id: @projection_goal_int.goal_int_id, january: @projection_goal_int.january, july: @projection_goal_int.july, june: @projection_goal_int.june, march: @projection_goal_int.march, may: @projection_goal_int.may, november: @projection_goal_int.november, october: @projection_goal_int.october, september: @projection_goal_int.september } }
    assert_redirected_to projection_goal_int_url(@projection_goal_int)
  end

  test "should destroy projection_goal_int" do
    assert_difference('ProjectionGoalInt.count', -1) do
      delete projection_goal_int_url(@projection_goal_int)
    end

    assert_redirected_to projection_goal_ints_url
  end
end
