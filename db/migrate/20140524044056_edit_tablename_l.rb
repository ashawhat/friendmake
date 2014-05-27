class EditTablenameL < ActiveRecord::Migration
  def self.up
  	rename_table :Location, :location
  end
  def self.down
        rename_table :Location, :location
  end
end
