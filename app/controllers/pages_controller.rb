class PagesController < ApplicationController

	def about
	end

	def contact
		# raise
		search = params[:member]
		@members = ['Carlos', 'Gabriel', 'Justin', 'Ju', 'Yuhri', 'Rafa']

		if search
			@members = @members.select { |member| member.downcase == search.downcase }
		end

	end

	def home
		@time = Date.today
	end

end
