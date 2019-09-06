class UserController < ApplicationController
	 has_one_attached :avatar
	   def show
		@user = User.find(params[:current_user])
	    end		

end
