class Foreignkeybooking < ActiveRecord::Migration
  def change
  	add_foreign_key :bookings, :homestays
  end
end
