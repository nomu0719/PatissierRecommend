class PatissiersController < ApplicationController
  def show
    @patissier = Patissier.find(params[:id])
    @shop = @patissier.shops
    recommends = Recommend.where(patissier_id: current_patissier.id).pluck(:shop_id)
    @recommend_list = Shop.find(recommends)  
  end
  def index
    @patissier = current_patissier
    @shops = Shop.all
  end
end
