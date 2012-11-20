class ApplicationController < ActionController::Base
  protect_from_forgery
  
  before_filter :determine_current_user
  before_filter :prepare_online_order

  def determine_current_user
    @user ||= User.find_by_id(session[:user_id])
  end
  
  def prepare_online_order
    @order ||= Order.find_by_id(session[:order_id])
  end
  
end
