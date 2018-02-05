require 'test_helper'

class PerformedGoalIntsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @performed_goal_int = performed_goal_ints(:one)
  end

  test "should get index" do
    get performed_goal_ints_url
    assert_response :success
  end

  test "should get new" do
    get new_performed_goal_int_url
    assert_response :success
  end

  test "should create performed_goal_int" do
    assert_difference('PerformedGoalInt.count') do
      post performed_goal_ints_url, params: { performed_goal_int: { april: @performed_goal_int.april, august: @performed_goal_int.august, december: @performed_goal_int.december, february: @performed_goal_int.february, goal_int_id: @performed_goal_int.goal_int_id, january: @performed_goal_int.january, july: @performed_goal_int.july, june: @performed_goal_int.june, march: @performed_goal_int.march, may: @performed_goal_int.may, november: @performed_goal_int.november, october: @performed_goal_int.october, september: @performed_goal_int.september } }
    end

    assert_redirected_to performed_goal_int_url(PerformedGoalInt.last)
  end

  test "should show performed_goal_int" do
    get performed_goal_int_url(@performed_goal_int)
    assert_response :success
  end

  test "should get edit" do
    get edit_performed_goal_int_url(@performed_goal_int)
    assert_response :success
  end

  test "should update performed_goal_int" do
    patch performed_goal_int_url(@performed_goal_int), params: { performed_goal_int: { april: @performed_goal_int.april, august: @performed_goal_int.august, december: @performed_goal_int.december, february: @performed_goal_int.february, goal_int_id: @performed_goal_int.goal_int_id, january: @performed_goal_int.january, july: @performed_goal_int.july, june: @performed_goal_int.june, march: @performed_goal_int.march, may: @performed_goal_int.may, november: @performed_goal_int.november, october: @performed_goal_int.october, september: @performed_goal_int.september } }
    assert_redirected_to performed_goal_int_url(@performed_goal_int)
  end

  test "should destroy performed_goal_int" do
    assert_difference('PerformedGoalInt.count', -1) do
      delete performed_goal_int_url(@performed_goal_int)
    end

    assert_redirected_to performed_goal_ints_url
  end
end
