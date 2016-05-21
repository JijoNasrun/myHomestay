class Addfkhomestay < ActiveRecord::Migration
  def change
  	add_foreign_key :homestays, :addresses
  end
end
