class Make < ActiveRecord::Base
	attr_protected :id
	geocoded_by :location	
	after_validation :geocode, :if => :location_changed?
	acts_as_commentable
end