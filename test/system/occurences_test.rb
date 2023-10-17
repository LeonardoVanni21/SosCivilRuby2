require "application_system_test_case"

class OccurencesTest < ApplicationSystemTestCase
  setup do
    @occurence = occurences(:one)
  end

  test "visiting the index" do
    visit occurences_url
    assert_selector "h1", text: "Occurences"
  end

  test "creating a Occurence" do
    visit occurences_url
    click_on "New Occurence"

    fill_in "Deliverydate", with: @occurence.deliveryDate
    fill_in "Idrequest", with: @occurence.idRequest
    fill_in "Status", with: @occurence.status
    click_on "Create Occurence"

    assert_text "Occurence was successfully created"
    click_on "Back"
  end

  test "updating a Occurence" do
    visit occurences_url
    click_on "Edit", match: :first

    fill_in "Deliverydate", with: @occurence.deliveryDate
    fill_in "Idrequest", with: @occurence.idRequest
    fill_in "Status", with: @occurence.status
    click_on "Update Occurence"

    assert_text "Occurence was successfully updated"
    click_on "Back"
  end

  test "destroying a Occurence" do
    visit occurences_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Occurence was successfully destroyed"
  end
end
