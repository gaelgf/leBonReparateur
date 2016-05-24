class AnnoncesController < ApplicationController
  def index
    @annonceurs = Annonceur.all
  end
end
