class GiftsController < ApplicationController
  respond_to :json

  def index
    respond_with Gift.all
  end

  def show
    respond_with Gift.find(params[:id])
  end
end
