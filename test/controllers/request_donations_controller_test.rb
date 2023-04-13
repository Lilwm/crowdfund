require "test_helper"

class RequestDonationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @request_donation = request_donations(:one)
  end

  test "should get index" do
    get request_donations_url
    assert_response :success
  end

  test "should get new" do
    get new_request_donation_url
    assert_response :success
  end

  test "should create request_donation" do
    assert_difference("RequestDonation.count") do
      post request_donations_url, params: { request_donation: { campaign_ID: @request_donation.campaign_ID, campaign_enddate: @request_donation.campaign_enddate, campaign_name: @request_donation.campaign_name, description: @request_donation.description, target_amount: @request_donation.target_amount, total_raised: @request_donation.total_raised } }
    end

    assert_redirected_to request_donation_url(RequestDonation.last)
  end

  test "should show request_donation" do
    get request_donation_url(@request_donation)
    assert_response :success
  end

  test "should get edit" do
    get edit_request_donation_url(@request_donation)
    assert_response :success
  end

  test "should update request_donation" do
    patch request_donation_url(@request_donation), params: { request_donation: { campaign_ID: @request_donation.campaign_ID, campaign_enddate: @request_donation.campaign_enddate, campaign_name: @request_donation.campaign_name, description: @request_donation.description, target_amount: @request_donation.target_amount, total_raised: @request_donation.total_raised } }
    assert_redirected_to request_donation_url(@request_donation)
  end

  test "should destroy request_donation" do
    assert_difference("RequestDonation.count", -1) do
      delete request_donation_url(@request_donation)
    end

    assert_redirected_to request_donations_url
  end
end
