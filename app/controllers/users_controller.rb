class UsersController < ApplicationController
    before_action :authenticate_user!, only: [:show]
  def show
    @user = User.find(params[:id])
    favorites = Favorite.where(user_id: current_user.id).pluck(:shop_id)
    @favorite_list = Shop.find(favorites)
    @favorite_list = Kaminari.paginate_array(@favorite_list).page(params[:page])
  end
end
