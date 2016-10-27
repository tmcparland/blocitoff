class ItemsController < ApplicationController
  
  def create
    @user = current_user
    @item = @user.items.new(item_params)
    
    if @item.save
      flash[:notice]="The item was saved"
      redirect_to @user
    else
      flash[:alert]="Item not saved"
      redirect_to @user
    end
    
  end

  def destroy
    @user = current_user
    @item = @user.items.find(params[:id])
    
    if @item.destroy
      flash[:notice]="Item has been completed"
    else
      flash[:alert]="Error"
    end
    respond_to do |format|
      format.html
      format.js
    end  
  end
  
private
  def item_params
    params.require(:item).permit(:name)
  end
end
