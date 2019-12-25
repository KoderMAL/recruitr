require "application_system_test_case"

class AvailablePositionsTest < ApplicationSystemTestCase
  setup do
    @available_position = available_positions(:one)
  end

  test "visiting the index" do
    visit available_positions_url
    assert_selector "h1", text: "Available Positions"
  end

  test "creating a Available position" do
    visit available_positions_url
    click_on "New Available Position"

    fill_in "Applications count", with: @available_position.applications_count
    fill_in "Content", with: @available_position.content
    click_on "Create Available position"

    assert_text "Available position was successfully created"
    click_on "Back"
  end

  test "updating a Available position" do
    visit available_positions_url
    click_on "Edit", match: :first

    fill_in "Applications count", with: @available_position.applications_count
    fill_in "Content", with: @available_position.content
    click_on "Update Available position"

    assert_text "Available position was successfully updated"
    click_on "Back"
  end

  test "destroying a Available position" do
    visit available_positions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Available position was successfully destroyed"
  end
end
