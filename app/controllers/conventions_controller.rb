class ConventionsController < ApplicationController

	def index
	end

	def new
		@convention = Convention.new
	end

	def create
		@convention = Convention.new(convention_params)
		if @convention.save
			flash[:notice] = "The congress has been created."
			redirect_to @convention
		else
			
		end
	end

	private
		def convention_params
				params.require(:convention).permit(:name,:description, :initDate, :endDate, :place)
		end

end
