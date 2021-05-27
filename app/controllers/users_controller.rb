class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    favorites = Favorite.where(user_id: current_user.id).pluck(:shop_id)
    @favorite_list = Shop.find(favorites)
  end
end
