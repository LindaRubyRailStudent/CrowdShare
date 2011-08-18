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
      format.xml { render xml: @user}
    end
   end

  def create
  @user = User.new(params[:user])

    if @user.save
    redirect_to user_path(@user), :flash => { :success => "Welcome to Crowdshare App"}
    else
      @title ="Sign up"
      render 'new'
    end
  end
end

