class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  protected

    def configure_permitted_parameters
        devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:nom, :prenom, :cp, :adresse, :telephone, :rayonIntervention, :situation, :description, :email, :password, :avatar) }
        devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:email, :password, :current_password, :nom, :prenom, :cp, :adresse, :telephone, :rayonIntervention, :situation, :description, :avatar) }
    end
end
