require 'test_helper'

class AvailablePositionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @available_position = available_positions(:one)
  end

  test "should get index" do
    get available_positions_url
    assert_response :success
  end

  test "should get new" do
    get new_available_position_url
    assert_response :success
  end

  test "should create available_position" do
    assert_difference('AvailablePosition.count') do
      post available_positions_url, params: { available_position: { applications_count: @available_position.applications_count, content: @available_position.content } }
    end

    assert_redirected_to available_position_url(AvailablePosition.last)
  end

  test "should show available_position" do
    get available_position_url(@available_position)
    assert_response :success
  end

  test "should get edit" do
    get edit_available_position_url(@available_position)
    assert_response :success
  end

  test "should update available_position" do
    patch available_position_url(@available_position), params: { available_position: { applications_count: @available_position.applications_count, content: @available_position.content } }
    assert_redirected_to available_position_url(@available_position)
  end

  test "should destroy available_position" do
    assert_difference('AvailablePosition.count', -1) do
      delete available_position_url(@available_position)
    end

    assert_redirected_to available_positions_url
  end
end
