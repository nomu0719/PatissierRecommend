class ShopsController < ApplicationController
  def new
    @shop = Shop.new
  end

  def create
    @shop = Shop.new(shop_params)
    @shop.patissier_id = current_patissier.id
    @shop.save
    redirect_to shops_path
  end

  def index
    @shops = Shop.all
  end

  def show
    @shop = Shop.find(params[:id])
  end

  def destroy
    @shop = Shop.find(params[:id])
    @shop.destroy
    redirect_to shops_path
  end
  private
  def shop_params
    params.require(:shop).permit(:name, :address, :image, :telephone_number, :introduction, :url)
  end
end
