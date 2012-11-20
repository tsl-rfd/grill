class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by_email(params[:email])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      session[:order_id] = @user.orders.create.id
      redirect_to root_url, notice: 'Welcome back!'
    else
      render 'new'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url
  end
end
