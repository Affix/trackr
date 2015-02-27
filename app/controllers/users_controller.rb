class UsersController < ApplicationController
  def index
  end

  def new
    @user = User.new
  end

  def create
    user_params = params[:user]
    @user = User.create(email: user_params[:email], password: user_params[:password], password_confirmation: user_params[:password_confirmation], firstname: user_params[:firstname], lastname: user_params[:lastname])
  end

  def update
  end

  def destroy
  end
end
