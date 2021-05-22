class PatissiersController < ApplicationController
  def show
    @patissier = Patissier.find(params[:id])
  end
  def index
    @patissier = current_patissier
    @shops = Shop.all
  end
end
