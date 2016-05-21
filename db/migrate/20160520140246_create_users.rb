class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :password
      t.integer :address_id
      t.string :phone
      t.timestamps null: false
    end
  end
end
