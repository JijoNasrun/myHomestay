class Addfkaddress < ActiveRecord::Migration
  def change
  	add_foreign_key :addresses, :states
  end
end
