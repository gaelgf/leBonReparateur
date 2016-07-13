class RegistrationsController < Devise::RegistrationsController

  private
    def sign_up_params
      params.require(:user).permit(:nom, :prenom, :cp, :adresse, :telephone, :rayonIntervention, :situation, :description, :email, :password, :password_confirmation)
    end

    def account_update_params
      params.require(:user).permit(:nom, :prenom, :cp, :adresse, :telephone, :situation, :rayonIntervention, :description, :email, :password, :password_confirmation, :current_password)
    end
end
