class ApplicationController < ActionController::Base
  protect_from_forgery
  
  def after_sign_in_path_for(resource)
    request.env['omniauth.origin'] || stored_location_for(resource) || admin_tutorials_path
  end
  
  def after_sign_out_path_for(resource)
    root_path
  end
  
end
