class HomesController < ApplicationController
  def index
    @homes = Home.all
  end

  def edit
    @home = Home.find(params[:id])
  end

  def update
    @home = Home.find(params[:id])
  end

  def delete
    @home = Home.find(params[:id])
    @home.destroy
  end

  private
  def home_params
    param.require(:home)
    .permit(
      :business_name,
      :background_photo,
      :_destroy,
      )
  end
end
