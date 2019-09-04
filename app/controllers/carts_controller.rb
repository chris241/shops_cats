class CartsController < ApplicationController
  def create
    @u=current_user.id
    @i=session[:item_id]


    if current_user.cart == nil
      @cart = Cart.create(user_id: @u)
    end

    @cart = JoinCartItem.create(cart_id:current_user.cart.id, item_id: @i)

     if @cart.save
       redirect_to '/'
     else
     puts "Try again"
     end
 end


 def show
   @cart = Cart.find(params[:id])
   @tab=@cart.items
 end
end
