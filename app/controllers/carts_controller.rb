class CartsController < ApplicationController
  def create
    @u=current_user.id
    @i=session[:item_id]
   

    @cart = Cart.create( user_id: @u,
                         item_id: @i,
                         id: @user_session )
     if @cart.save
       redirect_to '/'
     else
     puts "Try again"
     end
 end

 def show
    @carts = Cart.all
 end
  
 def count
    @price.each do |price|
        @count = price += 1
    end
 end



end
