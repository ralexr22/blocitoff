class UsersController < ApplicationController
  def show
    user_id = params[:id] || current_user.id
    @user = User.find(user_id)

    # if the @user is not the current user, redirect to welcome page.
    if current_user != @user
      flash[:notice] = "This list is private"
      redirect_to welcome_index_path

    end


    @item = Item.new
    @items = @user.items
  end
end
