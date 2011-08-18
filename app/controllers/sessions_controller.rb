class SessionsController < ApplicationController
  def new
    @title = "Sign in"
  end

  def destroy
    @title = "Sign out"
  end

  def create
    user = User.authenticate(params[:session][:email],
                             params[:session][:password])
    if user.nil?
      flash.now[:error] ="Invalid email/password combination"
      render 'new'
    else
      # Handle successful sign in here
    end

  end
end
