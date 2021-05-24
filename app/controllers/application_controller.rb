class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  
  def after_sign_in_path_for(resource) #ログイン後画面遷移先
    case resource
    when User
      user_path(current_user.id)
    when Patissier
      patissier_path(current_patissier.id) 
    end
  end
  
  
  protected
  
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end
end
