class RegistrationsController < Devise::RegistrationsController
  def after_sign_up_path_for(resource)
    home_after_regist_path
  end
  def after_inactive_sign_up_path_for(resource)
    home_after_regist_path
  end
end