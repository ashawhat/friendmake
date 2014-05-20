class AlterColumntypes < ActiveRecord::Migration
  def change
  	change_column :makes, :latitude, :float
  	change_column :makes, :longitude, :float
  end
end
