class Addfkbooking < ActiveRecord::Migration
  def change
  	add_foreign_key :bookings, :payments
  	add_foreign_key :bookings, :users
  end
end
