class RegistrationsController < Devise::RegistrationsController

  def sign_up_params
    params.require(:user).permit(:name, :email, :status, :password, :password_confirmation) 
  end
end