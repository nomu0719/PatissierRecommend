class ItemImagesController < ApplicationController
  def create
    shop = Shop.find(params[:shop_id])
    item_image = current_patissier.item_images.new(item_image_params)
    item_image.shop_id = shop.id
    item_image.save
    redirect_to shop_path(shop)
  end

  def destroy
    ItemImage.find_by(id: params[:id],shop_id: params[:shop_id]).destroy
    redirect_to shop_path(params[:shop_id])
  end
  private 
  def item_image_params
  params.require(:item_image).permit(:item_image)
  end
end
