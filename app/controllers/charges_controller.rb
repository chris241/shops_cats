class ChargesController < ApplicationController
  def new
  end

  def create
    # Amount in cents
    @amount = 500

    customer = Stripe::Customer.create({
      email: params[:stripeEmail],
      source: params[:stripeToken],
    })

    charge = Stripe::Charge.create({
      customer: customer.id,
      amount: @amount,
      description: 'Payement enligne',
      currency: 'eur',

    })

    @cart = Cart.find(current_user.cart.id)
    @join = @cart.join_cart_items.destroy_all
    redirect_to cart_path(@cart.id)

  rescue Stripe::CardError => e
    flash[:error] = e.message
    # redirect_to new_charge_path
  end
end
