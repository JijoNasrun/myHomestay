class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
    	t.integer :user_id
    	t.integer :homestay_id
    	t.integer :payment_id
    	
      t.timestamps null: false
    end
  end
end
