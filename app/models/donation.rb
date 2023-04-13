class Donation < ApplicationRecord
	#belongs_to :request_donation, class_name: 'RequestDonation', foreign_key: 'request_donation_id'
  	belongs_to :request_donation, class_name: 'RequestDonation', foreign_key: 'request_donation_id'
    after_create :update_total_raised

  	def update_total_raised
    self.request_donation.total_raised += self.amount
    self.request_donation.save
  end
end
