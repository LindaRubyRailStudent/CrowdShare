class SessionsController < ApplicationController
  def new
    @title = "Sign in"
  end

  def destroy
    @title = "Sign out"
  end

  def create

  end
end
