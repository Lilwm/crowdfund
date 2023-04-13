json.extract! request_donation, :id, :campaign_name, :campaign_ID, :description, :target_amount, :total_raised, :campaign_enddate, :created_at, :updated_at
json.url request_donation_url(request_donation, format: :json)
