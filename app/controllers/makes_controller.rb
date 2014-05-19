class MakesController < ApplicationController
	def index
		# @make = Make.all
	end

	def new
		@make = Make.new
	end

end