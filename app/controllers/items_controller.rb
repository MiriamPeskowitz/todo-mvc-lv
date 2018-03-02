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
 
 # PATCH  /lists/:list_id/items?:id
  def update
    # raise params.inspect 
    # what am i trying to update
    @item = Item.find(params[:id)
    @item.update(item_params)
    #refactor these two lines to 17, by adding status to strong params 
    # @item.status = params[:item][:status]
    # @item.save
 # could be coded as only the exact items on that list
 # @list = List.find(params[:list_id])
 # @item = @list.items.find(params[:id])
    redirect_to list_path(@item_list)
  end

  private
  def item_params
  	params.require(:item).permit(:description, :status)
  end 
end

