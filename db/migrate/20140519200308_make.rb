class Make < ActiveRecord::Migration
  def change
  	create_table :makes do |t|
      t.string :name
      t.string :content
      t.string :location
      t.datetime :schedule

      t.timestamps
    end
  end
end
