class FavoritePlacesController < ApplicationController
  before_action :authenticate_user!

  def index
    @favorite_places = current_user.favorite_places
  end

  def new
    @favorite_place = FavoritePlace.new
  end

  def show
    @favorite_place = FavoritePlace.find(params[:id])
  end


  def create
    favorite_place = current_user.favorite_places.new(favorite_place_params)

    if favorite_place.save
      flash[:success] = "お気に入りの店舗を登録しました！"
    else
      flash[:error] = "登録に失敗しました。"
    end

    redirect_to favorite_places_path
  end

  def destroy
    favorite_place = current_user.favorite_places.find(params[:id])
    favorite_place.destroy
    flash[:success] = "お気に入りの店舗を削除しました。"
    redirect_to favorite_places_path
  end

  private

  def favorite_place_params
    params.require(:favorite_place).permit(:name, :address, :latitude, :longitude)
  end
end
