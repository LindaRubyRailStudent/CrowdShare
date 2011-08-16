class UsersController < ApplicationController
  def new
    @title = "Sign up"
    @user = User.new
    respond_to do|format|
      format.html #new.html.erb
      format.json {render json: @user}
    end
  end

  def show
    @user = User.find(params[:id])
  end
end

