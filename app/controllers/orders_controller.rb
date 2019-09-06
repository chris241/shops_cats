class OrdersController < ApplicationController

  def show

  end

  def create
    @u=current_user.id
    @i=session[:item_id]
    @order = Order.create(user_id: @u)
    @commandes = JoinOrderItem.create(order_id:current_user.cart.id, item_id: @i)
      if @commandes.save
        @cart = Cart.find(current_user.cart.id)
        @join = @cart.join_cart_items.destroy_all
        redirect_to cart_path(current_user.cart.id)
     else
       puts "Try again"
     end
   end
end
