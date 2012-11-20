module ApplicationHelper
  
  def logged_in?
    session[:user_id].present?
  end
  
  def current_order
    @order
  end
  
end
