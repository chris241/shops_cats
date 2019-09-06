class ItemsController < ApplicationController

		def index
    	@items  = Item.all
    end

    def show
    	@item = Item.find(params[:id])
			session[:item_id]=params[:id]
    end

		def new
    	@item= Item.new
    end

    def create
    		@item = Item.new(title: params[:title],
    		                description: params[:description],
    		                price: params[:price],
    		                image_url: params[:image_url],
    		                )
    								if @item.save
    									redirect_to root_path(@item.id)
        						else

        						end
		end

		def destroy
			@item = Item.find(params[:id])
			@item.destroy
			redirect_to root_path
		end
end
