class CallbacksController < Devise::OmniauthCallbacksController
    def facebook
        @user = User.from_omniauth(request.env["omniauth.auth"])
        sign_in_and_redirect @user
    end

    def twitter
        @user = User.from_omniauth(request.env["omniauth.auth"])
        sign_in_and_redirect @user
    end
<<<<<<< HEAD
=======

    def google_oauth2
        @user = User.from_omniauth(request.env["omniauth.auth"])
        sign_in_and_redirect @user
    end

    # def google_oauth2
	   #  @user = User.find_for_google_oauth2(request.env["omniauth.auth"], current_user)

	   #  if @user
	   #    flash[:notice] = I18n.t "devise.omniauth_callbacks.success", :kind => "Google"
	   #    sign_in_and_redirect @user, :event => :authentication
	   #  else
	   #    redirect_to new_user_session_path, notice: 'Access Denied'
	   #  end
  	# end

>>>>>>> Messed with skip_confirmation, Reverted back to original
end