class Addfkuser < ActiveRecord::Migration
  def change
  	add_foreign_key :users, :addresses
  end
end
