require "application_system_test_case"

class ScoreCardsTest < ApplicationSystemTestCase
  setup do
    @score_card = score_cards(:one)
  end

  test "visiting the index" do
    visit score_cards_url
    assert_selector "h1", text: "Score Cards"
  end

  test "creating a Score card" do
    visit score_cards_url
    click_on "New Score Card"

    fill_in "Dynamism", with: @score_card.dynamism
    fill_in "Experience", with: @score_card.experience
    fill_in "Interest", with: @score_card.interest
    check "Is average" if @score_card.is_average
    fill_in "Overall", with: @score_card.overall
    fill_in "Participant", with: @score_card.participant_id
    fill_in "Recruiter", with: @score_card.recruiter_id
    click_on "Create Score card"

    assert_text "Score card was successfully created"
    click_on "Back"
  end

  test "updating a Score card" do
    visit score_cards_url
    click_on "Edit", match: :first

    fill_in "Dynamism", with: @score_card.dynamism
    fill_in "Experience", with: @score_card.experience
    fill_in "Interest", with: @score_card.interest
    check "Is average" if @score_card.is_average
    fill_in "Overall", with: @score_card.overall
    fill_in "Participant", with: @score_card.participant_id
    fill_in "Recruiter", with: @score_card.recruiter_id
    click_on "Update Score card"

    assert_text "Score card was successfully updated"
    click_on "Back"
  end

  test "destroying a Score card" do
    visit score_cards_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Score card was successfully destroyed"
  end
end
