class CreateHomestays < ActiveRecord::Migration
  def change
    create_table :homestays do |t|
    	t.string :address
    	t.integer :address_id
    	t.float :price
    	t.date :check_in
    	t.date :check_out
      t.timestamps null: false
    end
  end
end
