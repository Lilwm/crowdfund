require "application_system_test_case"

class RequestDonationsTest < ApplicationSystemTestCase
  setup do
    @request_donation = request_donations(:one)
  end

  test "visiting the index" do
    visit request_donations_url
    assert_selector "h1", text: "Request donations"
  end

  test "should create request donation" do
    visit request_donations_url
    click_on "New request donation"

    fill_in "Campaign id", with: @request_donation.campaign_ID
    fill_in "Campaign enddate", with: @request_donation.campaign_enddate
    fill_in "Campaign name", with: @request_donation.campaign_name
    fill_in "Description", with: @request_donation.description
    fill_in "Target amount", with: @request_donation.target_amount
    fill_in "Total raised", with: @request_donation.total_raised
    click_on "Create Request donation"

    assert_text "Request donation was successfully created"
    click_on "Back"
  end

  test "should update Request donation" do
    visit request_donation_url(@request_donation)
    click_on "Edit this request donation", match: :first

    fill_in "Campaign id", with: @request_donation.campaign_ID
    fill_in "Campaign enddate", with: @request_donation.campaign_enddate
    fill_in "Campaign name", with: @request_donation.campaign_name
    fill_in "Description", with: @request_donation.description
    fill_in "Target amount", with: @request_donation.target_amount
    fill_in "Total raised", with: @request_donation.total_raised
    click_on "Update Request donation"

    assert_text "Request donation was successfully updated"
    click_on "Back"
  end

  test "should destroy Request donation" do
    visit request_donation_url(@request_donation)
    click_on "Destroy this request donation", match: :first

    assert_text "Request donation was successfully destroyed"
  end
end
