class MakersController < ApplicationController
  def index
    makers = Maker.all
    render json: makers
  end

  def show
  end
end