class AddLatAndLong < ActiveRecord::Migration
  def change
  	add_column :makes, :latitude, :int
  	add_column :makes, :longitude, :int
  end
end
