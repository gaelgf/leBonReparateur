class ConnexionController < ApplicationController
  def index
    @annonceur = Annonceur.new
  end

  private
    def set_annonceur
      @annonceur = Annonceur.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def annonceur_params
      params.require(:annonceur).permit(:email, :nom, :prenom, :password, :cp, :adresse, :telephone, :situation, :rayonIntervention)
    end
end
