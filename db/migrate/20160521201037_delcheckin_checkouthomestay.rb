class DelcheckinCheckouthomestay < ActiveRecord::Migration
  def change
  	remove_column :homestays, :check_in, :date
  	remove_column :homestays, :check_out, :date
  end
end
