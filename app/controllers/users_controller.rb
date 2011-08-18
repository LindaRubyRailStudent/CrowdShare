class UsersController < ApplicationController


  def show
    @user = User.find(params[:id])
    @title = @user.name
  end

  def new
    @user = User.new
    @title = "Sign up"
  end

   def index
    @user = User.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml { render xml: @cs_members }
    end
  end
end

