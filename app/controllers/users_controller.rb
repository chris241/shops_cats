class UsersController < ApplicationController
	def show
		if params[:id].to_i == current_user.id
	    end		
	end	
end
