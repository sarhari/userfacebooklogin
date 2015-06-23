class OmniauthCallbacksController < Devise::OmniauthCallbacksController
	def facebook
    # You need to implement the method below in your model (e.g. app/models/user.rb)
    @user = User.from_omniauth(request.env["omniauth.auth"])
    puts "^^^^^^^^^6666666 #{@user.inspect}"

    if @user
      sign_in_and_redirect @user, :event => :authentication #this will throw if @user is not activated
      set_flash_message(:notice, :success, :kind => "Facebook") if is_navigational_format?
    else
      session["devise.facebook_data"] = request.env["omniauth.auth"]
      redirect_to new_user_registration_url
    end
  end

  def linkedin
    puts "This is linkedin #{request.env["omniauth.auth"]}"
     @user = User.from_omniauth(request.env["omniauth.auth"])
     if @user
      sign_in_and_redirect @user, :event => :authentication #this will throw if @user is not activated
      set_flash_message(:notice, :success, :kind => "linkedin") if is_navigational_format?
    else
      session["devise.linkedin_data"] = request.env["omniauth.auth"]
      redirect_to new_user_registration_url
    end
     puts "&&&&&&&&&&&&&&&& #{@user.inspect}"
  end
end
