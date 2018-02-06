require 'test_helper'

class PerformedGoalFloatsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @performed_goal_float = performed_goal_floats(:one)
  end

  test "should get index" do
    get performed_goal_floats_url
    assert_response :success
  end

  test "should get new" do
    get new_performed_goal_float_url
    assert_response :success
  end

  test "should create performed_goal_float" do
    assert_difference('PerformedGoalFloat.count') do
      post performed_goal_floats_url, params: { performed_goal_float: { april: @performed_goal_float.april, august: @performed_goal_float.august, december: @performed_goal_float.december, february: @performed_goal_float.february, goal_float_id: @performed_goal_float.goal_float_id, january: @performed_goal_float.january, july: @performed_goal_float.july, june: @performed_goal_float.june, march: @performed_goal_float.march, may: @performed_goal_float.may, november: @performed_goal_float.november, october: @performed_goal_float.october, september: @performed_goal_float.september } }
    end

    assert_redirected_to performed_goal_float_url(PerformedGoalFloat.last)
  end

  test "should show performed_goal_float" do
    get performed_goal_float_url(@performed_goal_float)
    assert_response :success
  end

  test "should get edit" do
    get edit_performed_goal_float_url(@performed_goal_float)
    assert_response :success
  end

  test "should update performed_goal_float" do
    patch performed_goal_float_url(@performed_goal_float), params: { performed_goal_float: { april: @performed_goal_float.april, august: @performed_goal_float.august, december: @performed_goal_float.december, february: @performed_goal_float.february, goal_float_id: @performed_goal_float.goal_float_id, january: @performed_goal_float.january, july: @performed_goal_float.july, june: @performed_goal_float.june, march: @performed_goal_float.march, may: @performed_goal_float.may, november: @performed_goal_float.november, october: @performed_goal_float.october, september: @performed_goal_float.september } }
    assert_redirected_to performed_goal_float_url(@performed_goal_float)
  end

  test "should destroy performed_goal_float" do
    assert_difference('PerformedGoalFloat.count', -1) do
      delete performed_goal_float_url(@performed_goal_float)
    end

    assert_redirected_to performed_goal_floats_url
  end
end
