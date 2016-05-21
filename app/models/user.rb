class User < ActiveRecord::Base
	has_secure_password
	has_many :bookings
	has_one :address

	  
end
