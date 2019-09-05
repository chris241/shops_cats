class HomeController < ApplicationController
  def index
  end

  def profil
    if user_signed_in?
      @cart = Cart.find_by(user_id: current_user.id)
      if @cart != nil
        associations = JoinItemCart.where(cart_id: @cart.id)
        @items = []
        associations.each do |a|
          @items.push(Item.find(a.item_id))
        end
      else
        @cart = Cart.new
        current_user.cart = @cart
        @cart.save
        @items = []
	  end
	end
  end

end
