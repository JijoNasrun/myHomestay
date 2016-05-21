class Booking < ActiveRecord::Base
	belongs_to :user
	has_one :homestay
	has_one :payment

end
