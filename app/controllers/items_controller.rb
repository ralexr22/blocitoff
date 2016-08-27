class ItemsController < ApplicationController
  def create
    @item = Item.new(name: params["item"]["name"])
    @user = User.find(params[:user_id])
    @item.user = current_user
    @item.save
    redirect_to user_path(@user)
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy
    @user = User.find(params[:user_id])

    respond_to do |format|
      format.html { redirect_to user_path(@user) }
      format.js { }
    end
  end
end
