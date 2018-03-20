class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  # for devise after login
  # def after_sign_in_path_for(resource)
  #   home_after_login_path
  # end
  # def after_sign_out_path_for(resource)
  #   home_after_logout_path
  # end
end
