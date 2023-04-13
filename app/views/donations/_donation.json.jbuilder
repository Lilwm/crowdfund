json.extract! donation, :id, :name, :campaign_ID, :amount, :comment, :created_at, :updated_at
json.url donation_url(donation, format: :json)
