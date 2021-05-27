class PatissiersController < ApplicationController
   before_action :authenticate_patissier!
  def show
    @patissier = Patissier.find(params[:id])
    @shop = @patissier.shops
    recommends = Recommend.where(patissier_id: current_patissier.id).pluck(:shop_id)
    @recommend_list = Shop.find(recommends)
    @recommend_list = Kaminari.paginate_array(@recommend_list).page(params[:page])
  end
  def index
    @patissier = current_patissier
    @shops = Shop.all
  end
end
