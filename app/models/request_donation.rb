class RequestDonation < ApplicationRecord
	 has_many :donations
	 after_initialize :set_default_total_raised, if: :new_record?

  	def set_default_total_raised
    	self.total_raised ||= 0
  	end
end
