class PkmnsController < ApplicationController
  before_action :set_pkmn, only: [:show, :edit, :update, :destroy]

  # GET /pkmns
  # GET /pkmns.json
  def index
    @pkmns = Pkmn.all.order(updated_at: :desc).limit(20)
    # sortiert nach "updated_at", absteigend, maximal 20 Datensaetze
    if params[:search]
      @pkmns = Pkmn.search_pkmns(params[:search])
  end
end
  # GET /pkmns/1
  # GET /pkmns/1.json
  def show
  end

  # GET /pkmns/new
  def new
    @pkmn = Pkmn.new
  end

  # GET /pkmns/1/edit
  def edit
  end

  # POST /pkmns
  # POST /pkmns.json
  def create
    @pkmn = Pkmn.new(pkmn_params)

    respond_to do |format|
      if @pkmn.save
        format.html { redirect_to @pkmn, notice: 'Pkmn was successfully created.' }
        format.json { render :show, status: :created, location: @pkmn }
      else
        format.html { render :new }
        format.json { render json: @pkmn.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pkmns/1
  # PATCH/PUT /pkmns/1.json
  def update
    respond_to do |format|
      if @pkmn.update(pkmn_params)
        format.html { redirect_to @pkmn, notice: 'Pkmn was successfully updated.' }
        format.json { render :show, status: :ok, location: @pkmn }
      else
        format.html { render :edit }
        format.json { render json: @pkmn.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pkmns/1
  # DELETE /pkmns/1.json
  def destroy
    @pkmn.destroy
    respond_to do |format|
      format.html { redirect_to pkmns_url, notice: 'Pkmn was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pkmn
      @pkmn = Pkmn.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pkmn_params
      params.require(:pkmn).permit(:gen, :name, :typ1, :typ2)
    end
end
