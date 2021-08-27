class InstrumentsController < ApplicationController
  # before_action(:require_login)
  before_action :set_instrument, only: [:show, :edit, :update, :destroy]
  
    def index
      instruments = Instrument.all
      render json: instruments
    end
  
    # def new
    #   @instrument = Instrument.new 
    #   @family = Family.find_by(id: params[:family_id])
    # end
  
    def create 
      # binding.pry
      instrument = Instrument.new(instrument_params)
      instrument.family_id = Family.find_by(name: params[:family]).id
      instrument.category_id = Category.find_by(name: params[:category]).id
      instrument.maker_id = Maker.find_by(name: params[:maker]).id
      instrument.user_id = params[:user]
      # binding.pry
      # instrument.user_id = current_user.id
      if instrument.save 
        render json: instruments
      else
        # @family = Family.find_by(id: instrument_params[:family_id])
        render json: instruments
      end
    end
  
    def show
      # binding.pry
     instrument = Instrument.find_by(id: params[:id])
     render json: instrument
    end
  
    # def edit
    #   if @instrument.user_id != current_user.id
    #     redirect_to instruments_path
    #   else
    #     @family = Family.find_by(id: @instrument.family_id)
    #   end
    # end
  
    # def update
    #   @instrument.update(instrument_params)
    #   redirect_to instrument_path(@instrument)
    # end
  
    # def destroy
     
    #   if @instrument.user_id != current_user.id
    #     redirect_to instruments_path
    #   else
    #     @instrument.destroy
    #     redirect_to instruments_path
    #   end
    # end
  
    private
  
    def set_instrument
      @instrument = Instrument.find_by(id: params[:id])
    end
  
    def instrument_params
      params.require(:instrument).permit(
        :price, 
        :year, 
        :frets, 
        :color, 
        :material, 
        :hole, 
        :body, 
        :neck, 
        :back, 
        :bridge, 
        :description,  
        :for_sale,
        :category,
        :family,
        :maker,
        :user
      )
    end
  end
  
