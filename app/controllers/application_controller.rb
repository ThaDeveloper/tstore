class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  rescue_from CanCan::AccessDenied do |exception|  
    flash[:error] = "Access denied! You don't have permission for that action."  
    redirect_to root_url  
  end 
end