class CreateRequestDonations < ActiveRecord::Migration[7.0]
  def change
    create_table :request_donations  campaign_ID: :serial do |t|
      t.string :campaign_name
      #t.integer :campaign_ID
      t.string :description
      t.integer :target_amount
      t.integer :total_raised, default: 0
      t.date :campaign_enddate

      t.timestamps
    end
  end
end
