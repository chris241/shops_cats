class CartsController < ApplicationController
  def create
    @u=current_user.id
    @i=session[:item_id]


    @cart = Cart.create(id:@u, user_id: @u, item_id: @i)
     if @cart.save
       redirect_to '/'
     else
     puts "Try again"
     end
 end
 def show
 	@carts = Cart.all

 end
end