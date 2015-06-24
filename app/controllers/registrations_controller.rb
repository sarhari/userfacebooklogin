class RegistrationsController < Devise::RegistrationsController
before_filter :configure_permitted_parameters
protected

  def configure_permitted_parameters
  	puts "inspecing the paramsssss #{params.inspect}"
    devise_parameter_sanitizer.for(:sign_up).push(:firstname, :lastname, :avatar, :avatar_cache)
  end
end

