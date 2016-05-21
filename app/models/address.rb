class Address < ActiveRecord::Base
	belongs_to :homestay
	belongs_to :user
	belongs_to :state
end
