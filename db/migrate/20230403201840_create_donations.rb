class CreateDonations < ActiveRecord::Migration[7.0]
  def change
    create_table :donations do |t|
      t.string :name
      t.integer :campaign_ID
      t.integer :amount
      t.string :comment

      t.timestamps
    end
  end
end
