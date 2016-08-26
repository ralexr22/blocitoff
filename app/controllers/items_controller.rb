class ItemsController < ApplicationController
  def create
    @item = Item.new(name: params["item"]["name"])
    @user = User.find(params[:user_id])
    @item.user = current_user
    @item.save
    redirect_to user_path(@user)
  end
end
