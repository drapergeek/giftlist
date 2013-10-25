class GiftsController < ApplicationController
  respond_to :json

  def index
    respond_with Gift.all
  end

  def show
    respond_with Gift.find(params[:id])
  end

  def create
    respond_with Gift.create(gift_params)
  end

  def update
    respond_with Gift.update(params[:id], gift_params)
  end

  def destroy
    respond_with Gift.destroy(params[:id])
  end

  private

  def gift_params
    params.require(:gift).permit(:name, :price, :url)
  end
end
