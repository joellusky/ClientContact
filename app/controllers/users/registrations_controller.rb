class users::registrationsController < Devise::registrationsController
  # def new
  #   super
  # end

  # def create
  #   super
  # end
  def sign_up_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation, :phone_number, :signature)
  end
 
  def account_update_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation, :current_password, :phone_number, :signature)
  end
end

end
