class OrdersController < ApplicationController

  def show
 end
 def create
   # Amount in cents
 #   @amount = 500
 #   customer = Stripe::Customer.create({
 #     email: params[:stripeEmail],
 #     source: params[:stripeToken],
 #   })
 #   charge = Stripe::Charge.create({
 #     customer: customer.id,
 #     amount: @amount,
 #     description: 'Payement enligne',
 #     currency: 'eur',
 #   })
 # rescue Stripe::CardError => e
 #   flash[:error] = e.message
   @u=current_user.id
   @i=session[:item_id]
   @order = Order.create(user_id: @u)
   @commandes = JoinOrderItem.create(order_id:current_user.cart.id, item_id: @i)
     if @commandes.save
       # @cart = Cart.find(current_user.cart.id)
       # @join = @cart.join_cart_items.destroy_all
       # redirect_to cart_path(current_user.cart.id)
       redirect_to new_charge_path
    else
      puts "Try again"
    end
  end

  def create
    @u=current_user.id
    @i=session[:item_id]
    @order = Order.create(user_id: @u)
    @commandes = JoinOrderItem.create(order_id:current_user.cart.id, item_id: @i)
      if @commandes.save
       redirect_to new_charge_path
     else
       puts "Try again"
     end
   end
end
end
