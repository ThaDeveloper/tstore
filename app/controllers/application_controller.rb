class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  rescue_from CanCan::AccessDenied do |exception|  
    flash[:error] = "Access denied! You don't have permission for that action."  
    redirect_to root_url  
  end 
  include PublicActivity::StoreController
end
