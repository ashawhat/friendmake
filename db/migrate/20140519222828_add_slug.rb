class AddSlug < ActiveRecord::Migration
  def change
    add_column :makes, :slug, :string
 
  end
 end

