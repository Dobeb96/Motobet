class MotogpsController < ApplicationController
  before_action :set_motogp, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /motogps
  # GET /motogps.json
  def index
    @motogps = Motogp.all
  end

  # GET /motogps/1
  # GET /motogps/1.json
  def show
  end

  # GET /motogps/new
  def new
    @motogp = Motogp.new
  end

  # GET /motogps/1/edit
  def edit
  end

  # POST /motogps
  # POST /motogps.json
  def create
    @motogp = Motogp.new(motogp_params)

    respond_to do |format|
      if @motogp.save
        format.html { redirect_to @motogp, notice: 'Motogp was successfully created.' }
        format.json { render :show, status: :created, location: @motogp }
      else
        format.html { render :new }
        format.json { render json: @motogp.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /motogps/1
  # PATCH/PUT /motogps/1.json
  def update
    respond_to do |format|
      if @motogp.update(motogp_params)
        format.html { redirect_to @motogp, notice: 'Motogp was successfully updated.' }
        format.json { render :show, status: :ok, location: @motogp }
      else
        format.html { render :edit }
        format.json { render json: @motogp.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /motogps/1
  # DELETE /motogps/1.json
  def destroy
    @motogp.destroy
    respond_to do |format|
      format.html { redirect_to motogps_url, notice: 'Motogp was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_motogp
      @motogp = Motogp.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def motogp_params
      params.require(:motogp).permit(:match_starts_at, :team_1, :team_2, :league, :odds, :chance, :pick, :status, :main_page)
    end
end
