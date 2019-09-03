class CartsController < ApplicationController
  def create
    @item = params[:id]
    @cart = Cart.create(user:current_user, item:@item)

     if @cart.save

     redirect_to '/'

     else

    
     end
 end










  def show
  end
end
