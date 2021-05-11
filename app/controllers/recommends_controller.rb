class RecommendsController < ApplicationController
  def create
    shop = Shop.find(params[:shop_id])
    recommend = current_patissier.recommends.new(shop_id: shop.id)
    recommend.save
    redirect_to shop_path(shop)
  end

  def destroy
    shop = Shop.find(params[:shop_id])
    recommend = current_patissier.recommends.find_by(shop_id: shop.id)
    recommend.destroy
    redirect_to shop_path(shop)
  end
end
