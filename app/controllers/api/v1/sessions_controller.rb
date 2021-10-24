class Api::V1::SessionsController < ApplicationController
  
  def new
  end

  def create
    # binding.pry
    @user = User.find_by(username: params[:session][:username])
    if @user && @user.authenticate(params[:session][:password])
      session[:user_id] = @user.id
      render json: @user

    else
      render json: 
      {error: "Invalid Credentials"}
    #   render :new
    end
  end

  def get_current_user
    if logged_in?
      render json: current_user
    else
      render json: {
        error: "No one logged in"
      }

    end
  end


  def destroy
    # session.clear
    # redirect_to "/login"
  end

  private

  def user_params
    params.require(:user).permit(
      :username, 
      :password,
      :password_confirmation
    )
  end
end