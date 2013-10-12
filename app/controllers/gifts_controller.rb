class GiftsController < ApplicationController
  respond_to :json

  def index
    respond_with Gift.all
  end
end
