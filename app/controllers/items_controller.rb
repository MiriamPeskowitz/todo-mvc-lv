class ItemsController < ApplicationController
  def create
  	@list = List.find(params[:list_id]) # in other words, find the parent!!
  	@item = @list.items.build(item_params)  	# assoaciate item with a list 
  	if @item.save
    	redirect_to list_path(@list)
    else 
    	render 'lists/show'
    end 
  end 
 
  private
  def item_params
  	params.require(:item).permit(:description)
  end 
end

