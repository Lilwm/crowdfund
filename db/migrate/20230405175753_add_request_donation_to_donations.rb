class AddRequestDonationToDonations < ActiveRecord::Migration[7.0]
  def change
    add_reference :donations, :request_donation, null: false, foreign_key: true
  end
end
