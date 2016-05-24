class PannesController < ApplicationController
  before_action :set_panne, only: [:show, :edit, :update, :destroy]

  # GET /pannes
  # GET /pannes.json
  def index
    @pannes = Panne.all
  end

  # GET /pannes/1
  # GET /pannes/1.json
  def show
  end

  # GET /pannes/new
  def new
    @panne = Panne.new
  end

  # GET /pannes/1/edit
  def edit
  end

  # POST /pannes
  # POST /pannes.json
  def create
    @panne = Panne.new(panne_params)

    respond_to do |format|
      if @panne.save
        format.html { redirect_to @panne, notice: 'Panne was successfully created.' }
        format.json { render :show, status: :created, location: @panne }
      else
        format.html { render :new }
        format.json { render json: @panne.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pannes/1
  # PATCH/PUT /pannes/1.json
  def update
    respond_to do |format|
      if @panne.update(panne_params)
        format.html { redirect_to @panne, notice: 'Panne was successfully updated.' }
        format.json { render :show, status: :ok, location: @panne }
      else
        format.html { render :edit }
        format.json { render json: @panne.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pannes/1
  # DELETE /pannes/1.json
  def destroy
    @panne.destroy
    respond_to do |format|
      format.html { redirect_to pannes_url, notice: 'Panne was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_panne
      @panne = Panne.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def panne_params
      params.require(:panne).permit(:nom, :description)
    end
end
