class ModeleTelephonesController < ApplicationController
  before_action :set_modele_telephone, only: [:show, :edit, :update, :destroy]

  # GET /modele_telephones
  # GET /modele_telephones.json
  def index
    @modele_telephones = ModeleTelephone.all
  end

  # GET /modele_telephones/1
  # GET /modele_telephones/1.json
  def show
  end

  # GET /modele_telephones/new
  def new
    @modele_telephone = ModeleTelephone.new
  end

  # GET /modele_telephones/1/edit
  def edit
  end

  # POST /modele_telephones
  # POST /modele_telephones.json
  def create
    @modele_telephone = ModeleTelephone.new(modele_telephone_params)

    respond_to do |format|
      if @modele_telephone.save
        format.html { redirect_to @modele_telephone, notice: 'Modele telephone was successfully created.' }
        format.json { render :show, status: :created, location: @modele_telephone }
      else
        format.html { render :new }
        format.json { render json: @modele_telephone.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /modele_telephones/1
  # PATCH/PUT /modele_telephones/1.json
  def update
    respond_to do |format|
      if @modele_telephone.update(modele_telephone_params)
        format.html { redirect_to @modele_telephone, notice: 'Modele telephone was successfully updated.' }
        format.json { render :show, status: :ok, location: @modele_telephone }
      else
        format.html { render :edit }
        format.json { render json: @modele_telephone.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /modele_telephones/1
  # DELETE /modele_telephones/1.json
  def destroy
    @modele_telephone.destroy
    respond_to do |format|
      format.html { redirect_to modele_telephones_url, notice: 'Modele telephone was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_modele_telephone
      @modele_telephone = ModeleTelephone.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def modele_telephone_params
      params.require(:modele_telephone).permit(:nom)
    end
end
