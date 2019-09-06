class AdminavatarController < ApplicationController
	def create
    @item = Item.find(params[:item_id])
    puts '*'*95
    puts params[:item_id]
    puts '*'*95
    @item.adminavatar.attach(params[:avatar])
    redirect_to(item_path(@item))
  end
end
