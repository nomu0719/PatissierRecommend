class CommentsController < ApplicationController
  def create
    shop = Shop.find(params[:shop_id])
    comment = current_patissier.comments.new(comment_params)
    comment.shop_id = shop.id
    comment.save
      redirect_to shop_path(shop)
  end

  def destroy
    Comment.find_by(id: params[:id],shop_id: params[:shop_id]).destroy
    redirect_to shop_path(params[:shop_id])
  end
  
  private

  def comment_params
    params.require(:comment).permit(:comment)
  end
end
