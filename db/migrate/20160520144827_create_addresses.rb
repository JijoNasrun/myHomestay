class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
    	t.integer :state_id
    	t.integer :postcode
    	t.string :address
      t.timestamps null: false
    end
  end
end
